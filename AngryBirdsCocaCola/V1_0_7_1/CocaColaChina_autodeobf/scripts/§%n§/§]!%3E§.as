package §%n§
{
   import §%!G§.§ !G§;
   import §%!G§.§-h§;
   import §,@§.§"!'§;
   import §-X§.§2&§;
   import §-v§.§,!1§;
   import §1"§.HighscoreSidebar;
   import §2!$§.§<!%§;
   import §6!@§.§ !!§;
   import §^!5§.§+^§;
   
   public class §]!>§ extends §91§
   {
      
      public static const §^6§:String = "LevelEndFailState3";
       
      
      private var §@!N§:§"!'§;
      
      private var §-!F§:Array;
      
      public function §]!>§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         this.§-!F§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!R§ = new § !G§(this);
         §5!R§.init(§-h§.§#z§.Views.View_LevelEndFail3[0]);
         this.§<!Q§();
         this.§@!N§ = new §"!'§(0,0,0,0);
         §5!R§.movieClip.addChildAt(this.§@!N§,§5!R§.movieClip.numChildren - 1);
      }
      
      protected function §<!Q§() : void
      {
         this.§-!F§.push(§5!R§.getItemByName("Button_Menu").x);
         this.§-!F§.push(§5!R§.getItemByName("Button_Replay").x);
         this.§-!F§.push(§5!R§.getItemByName("Button_Next").x);
      }
      
      protected function §>=§(param1:Boolean) : void
      {
         §5!R§.getItemByName("Button_Menu").setVisibility(true);
         §5!R§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §5!R§.getItemByName("Button_Next").setVisibility(true);
            §5!R§.getItemByName("Button_Menu").x = this.§-!F§[0];
            §5!R§.getItemByName("Button_Replay").x = this.§-!F§[1];
            §5!R§.getItemByName("Button_Next").x = this.§-!F§[2];
         }
         else
         {
            §5!R§.getItemByName("Button_Next").setVisibility(false);
            §5!R§.getItemByName("Button_Menu").x = this.§-!F§[0] + Math.abs(this.§-!F§[1] - this.§-!F§[0]) / 2;
            §5!R§.getItemByName("Button_Replay").x = this.§-!F§[1] + Math.abs(this.§-!F§[2] - this.§-!F§[1]) / 2 + §5!R§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         §'! §.enableHelpButton(false);
         §,!1§.§2T§.§=!H§(true);
         this.§@!N§.§3d§(0.7);
         this.§>=§(§+^§.§6!!§(§2&§.§#P§()));
      }
      
      override protected function setInitialState() : void
      {
         if(§2&§.§6q§ == 0)
         {
            §'! §.changeState(HighscoreSidebar.§`<§);
         }
         else
         {
            §'! §.changeState(§'! §.currentState);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         return § !!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@!N§.§66§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §4-§.§^!F§();
               mNextState = §4-§.§^6§;
               break;
            case "REPLAY":
               §4-§.§[^§();
               mNextState = §4-§.§^6§;
               break;
            case "MENU":
               mNextState = §"!@§.§9!L§;
         }
      }
   }
}
