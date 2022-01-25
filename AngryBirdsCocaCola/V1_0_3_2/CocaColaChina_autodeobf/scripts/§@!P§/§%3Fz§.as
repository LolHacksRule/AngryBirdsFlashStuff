package §@!P§
{
   import §!!L§.§&!R§;
   import §!!a§.§9G§;
   import §1!'§.HighscoreSidebar;
   import §2!a§.§?O§;
   import §6l§.§#!Z§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   import §>!8§.§71§;
   import §`!7§.§[5§;
   
   public class §?z§ extends §3!%§
   {
      
      public static const §'2§:String = "LevelEndFailState3";
       
      
      private var §&!B§:§?O§;
      
      private var §@!H§:Array;
      
      public function §?z§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         this.§@!H§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!`§ = new §4!0§(this);
         §+!`§.init(§71§.§#X§.Views.View_LevelEndFail3[0]);
         this.§%![§();
         this.§&!B§ = new §?O§(0,0,0,0);
         §+!`§.movieClip.addChildAt(this.§&!B§,§+!`§.movieClip.numChildren - 1);
      }
      
      protected function §%![§() : void
      {
         this.§@!H§.push(§+!`§.getItemByName("Button_Menu").x);
         this.§@!H§.push(§+!`§.getItemByName("Button_Replay").x);
         this.§@!H§.push(§+!`§.getItemByName("Button_Next").x);
      }
      
      protected function §?!J§(param1:Boolean) : void
      {
         §+!`§.getItemByName("Button_Menu").setVisibility(true);
         §+!`§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §+!`§.getItemByName("Button_Next").setVisibility(true);
            §+!`§.getItemByName("Button_Menu").x = this.§@!H§[0];
            §+!`§.getItemByName("Button_Replay").x = this.§@!H§[1];
            §+!`§.getItemByName("Button_Next").x = this.§@!H§[2];
         }
         else
         {
            §+!`§.getItemByName("Button_Next").setVisibility(false);
            §+!`§.getItemByName("Button_Menu").x = this.§@!H§[0] + Math.abs(this.§@!H§[1] - this.§@!H§[0]) / 2;
            §+!`§.getItemByName("Button_Replay").x = this.§@!H§[1] + Math.abs(this.§@!H§[2] - this.§@!H§[1]) / 2 + §+!`§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         §@<§.enableHelpButton(false);
         §"n§.§[b§.§+!U§(true);
         this.§&!B§.§<!S§(0.7);
         this.§?!J§(§[5§.§!_§(§9G§.§7!X§()));
      }
      
      override protected function setInitialState() : void
      {
         if(§9G§.§=!1§ == 0)
         {
            §@<§.changeState(HighscoreSidebar.§%A§);
         }
         else
         {
            §@<§.changeState(§@<§.currentState);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         return §&!R§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&!B§.§<#§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'!-§.§>t§();
               mNextState = §'!-§.§'2§;
               break;
            case "REPLAY":
               §'!-§.§^4§();
               mNextState = §'!-§.§'2§;
               break;
            case "MENU":
               mNextState = §=i§.§0!U§;
         }
      }
   }
}
