package §+!9§
{
   import §,J§.§7!A§;
   import §1!6§.§ !3§;
   import §4;§.§,h§;
   import §6!"§.§<!+§;
   import §7!X§.§%!=§;
   import §7!X§.§7g§;
   import §7h§.§7!"§;
   import §?!P§.§@@§;
   import §var§.§+!^§;
   
   public class §^!?§ extends §3!!§
   {
      
      public static const §6! §:String = "LevelEndFailState";
       
      
      private var §#Z§:§<!+§;
      
      private var §8!E§:Array;
      
      public function §^!?§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§8!E§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!M§ = new §7g§(this);
         §2!M§.init(§%!=§.§ #§.Views.View_LevelEndFail[0]);
         this.§3!^§();
         this.§#Z§ = new §<!+§(0,0,0,0);
         §2!M§.movieClip.addChildAt(this.§#Z§,§2!M§.movieClip.numChildren - 1);
      }
      
      protected function §3!^§() : void
      {
         this.§8!E§.push(§2!M§.getItemByName("Button_Menu").x);
         this.§8!E§.push(§2!M§.getItemByName("Button_Replay").x);
         this.§8!E§.push(§2!M§.getItemByName("Button_Next").x);
      }
      
      protected function §`m§(param1:Boolean) : void
      {
         §2!M§.getItemByName("Button_Menu").setVisibility(true);
         §2!M§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §2!M§.getItemByName("Button_Next").setVisibility(true);
            §2!M§.getItemByName("Button_Menu").x = this.§8!E§[0];
            §2!M§.getItemByName("Button_Replay").x = this.§8!E§[1];
            §2!M§.getItemByName("Button_Next").x = this.§8!E§[2];
         }
         else
         {
            §2!M§.getItemByName("Button_Next").setVisibility(false);
            §2!M§.getItemByName("Button_Menu").x = this.§8!E§[0] + Math.abs(this.§8!E§[1] - this.§8!E§[0]) / 2;
            §2!M§.getItemByName("Button_Replay").x = this.§8!E§[1] + Math.abs(this.§8!E§[2] - this.§8!E§[1]) / 2 + §2!M§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §@@§.§ !8§.§5!?§(true);
         this.§#Z§.§+!>§(0.7);
         this.§`m§(§ !3§.§]D§(§7!A§.§5R§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §7!A§.§ !A§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§4^§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,h§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,h§.STATE_STATUS_COMPLETED;
         }
         return §,h§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§#Z§.§'!4§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               § 4§.§1%§();
               mNextState = § 4§.§6! §;
               break;
            case "REPLAY":
               § 4§.§13§();
               mNextState = § 4§.§6! §;
               break;
            case "MENU":
               §7!"§.§9!0§();
               mNextState = §1F§.§"T§;
         }
      }
   }
}
