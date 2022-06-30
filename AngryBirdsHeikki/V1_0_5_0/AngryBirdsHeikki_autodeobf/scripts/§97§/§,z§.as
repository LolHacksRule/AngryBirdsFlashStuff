package §97§
{
   import § !Y§.§7§;
   import § !Y§.§if§;
   import §2!Q§.§'[§;
   import §2H§.§>!^§;
   import §3-§.§1L§;
   import §93§.§^!H§;
   import §=X§.§7!4§;
   import §?!"§.§^!`§;
   import §@=§.§'3§;
   import §[!C§.HighscoreSidebar;
   
   public class §,z§ extends §62§
   {
      
      public static const §4l§:String = "LevelEndFailState";
       
      
      private var §4<§:§'3§;
      
      private var §'!0§:Array;
      
      public function §,z§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§'!0§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?P§ = new §if§(this);
         §?P§.init(§7§.§5!@§.Views.View_LevelEndFail[0]);
         this.§&y§();
         this.§4<§ = new §'3§(0,0,0,0);
         §?P§.movieClip.addChildAt(this.§4<§,§?P§.movieClip.numChildren - 1);
      }
      
      protected function §&y§() : void
      {
         this.§'!0§.push(§?P§.getItemByName("Button_Menu").x);
         this.§'!0§.push(§?P§.getItemByName("Button_Replay").x);
         this.§'!0§.push(§?P§.getItemByName("Button_Next").x);
      }
      
      protected function §^P§(param1:Boolean) : void
      {
         §?P§.getItemByName("Button_Menu").setVisibility(true);
         §?P§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §?P§.getItemByName("Button_Next").setVisibility(true);
            §?P§.getItemByName("Button_Menu").x = this.§'!0§[0];
            §?P§.getItemByName("Button_Replay").x = this.§'!0§[1];
            §?P§.getItemByName("Button_Next").x = this.§'!0§[2];
         }
         else
         {
            §?P§.getItemByName("Button_Next").setVisibility(false);
            §?P§.getItemByName("Button_Menu").x = this.§'!0§[0] + Math.abs(this.§'!0§[1] - this.§'!0§[0]) / 2;
            §?P§.getItemByName("Button_Replay").x = this.§'!0§[1] + Math.abs(this.§'!0§[2] - this.§'!0§[1]) / 2 + §?P§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §1L§.§"f§.§2!A§(true);
         this.§4<§.§%I§(0.7);
         this.§^P§(§^!`§.§=!R§(§7!4§.§2!K§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §7!4§.§"P§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§[?§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         return §>!^§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4<§.§?!#§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §]!X§.§!U§();
               mNextState = §]!X§.§4l§;
               break;
            case "REPLAY":
               §]!X§.§6$§();
               mNextState = §]!X§.§4l§;
               break;
            case "MENU":
               §'[§.§9!;§();
               mNextState = §,-§.§,O§;
         }
      }
   }
}
