package §function§
{
   import §#Q§.§8#§;
   import §#Q§.§8Y§;
   import §%i§.§#`§;
   import §&!6§.§5r§;
   import §'!C§.§-!S§;
   import §1Q§.§'!`§;
   import §4M§.HighscoreSidebar;
   import §8! §.§#z§;
   import §>!F§.§9!Z§;
   import §^E§.§9!Q§;
   
   public class §-<§ extends §1!@§
   {
      
      public static const §94§:String = "LevelEndFailState";
       
      
      private var §-!F§:§-!S§;
      
      private var §>T§:Array;
      
      public function §-<§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§>T§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §@K§ = new §8Y§(this);
         §@K§.init(§8#§.§6K§.Views.View_LevelEndFail[0]);
         this.§9!%§();
         this.§-!F§ = new §-!S§(0,0,0,0);
         §@K§.movieClip.addChildAt(this.§-!F§,§@K§.movieClip.numChildren - 1);
      }
      
      protected function §9!%§() : void
      {
         this.§>T§.push(§@K§.getItemByName("Button_Menu").x);
         this.§>T§.push(§@K§.getItemByName("Button_Replay").x);
         this.§>T§.push(§@K§.getItemByName("Button_Next").x);
      }
      
      protected function §3[§(param1:Boolean) : void
      {
         §@K§.getItemByName("Button_Menu").setVisibility(true);
         §@K§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §@K§.getItemByName("Button_Next").setVisibility(true);
            §@K§.getItemByName("Button_Menu").x = this.§>T§[0];
            §@K§.getItemByName("Button_Replay").x = this.§>T§[1];
            §@K§.getItemByName("Button_Next").x = this.§>T§[2];
         }
         else
         {
            §@K§.getItemByName("Button_Next").setVisibility(false);
            §@K§.getItemByName("Button_Menu").x = this.§>T§[0] + Math.abs(this.§>T§[1] - this.§>T§[0]) / 2;
            §@K§.getItemByName("Button_Replay").x = this.§>T§[1] + Math.abs(this.§>T§[2] - this.§>T§[1]) / 2 + §@K§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §9!Z§.§5!$§.§8t§(true);
         this.§-!F§.§5J§(0.7);
         this.§3[§(§9!Q§.§ !D§(§#z§.§5!@§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §#z§.§@k§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§'o§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5r§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §5r§.STATE_STATUS_COMPLETED;
         }
         return §5r§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-!F§.§5=§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §8E§.§=!A§();
               mNextState = §8E§.§94§;
               break;
            case "REPLAY":
               §8E§.§1$§();
               mNextState = §8E§.§94§;
               break;
            case "MENU":
               §#`§.§2!5§();
               mNextState = §"H§.§]X§;
         }
      }
   }
}
