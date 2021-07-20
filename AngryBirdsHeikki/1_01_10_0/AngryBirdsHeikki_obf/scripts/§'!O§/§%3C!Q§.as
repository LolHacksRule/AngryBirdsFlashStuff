package §'!O§
{
   import §-!"§.§=p§;
   import §2`§.HighscoreSidebar;
   import §3Y§.§4!_§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §9b§.§"!S§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   
   public class §<!Q§ extends §=j§
   {
      
      public static const §@o§:String = "LevelEndFailState";
       
      
      private var §+!_§:§-k§;
      
      private var §[!`§:Array;
      
      public function §<!Q§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§[!`§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]!9§ = new §]!Q§(this);
         §]!9§.init(§;A§.§=I§.Views.View_LevelEndFail[0]);
         this.§]!a§();
         this.§+!_§ = new §-k§(0,0,0,0);
         §]!9§.movieClip.addChildAt(this.§+!_§,§]!9§.movieClip.numChildren - 1);
      }
      
      protected function §]!a§() : void
      {
         this.§[!`§.push(§]!9§.getItemByName("Button_Menu").x);
         this.§[!`§.push(§]!9§.getItemByName("Button_Replay").x);
         this.§[!`§.push(§]!9§.getItemByName("Button_Next").x);
      }
      
      protected function §3f§(param1:Boolean) : void
      {
         §]!9§.getItemByName("Button_Menu").setVisibility(true);
         §]!9§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §]!9§.getItemByName("Button_Next").setVisibility(true);
            §]!9§.getItemByName("Button_Menu").x = this.§[!`§[0];
            §]!9§.getItemByName("Button_Replay").x = this.§[!`§[1];
            §]!9§.getItemByName("Button_Next").x = this.§[!`§[2];
         }
         else
         {
            §]!9§.getItemByName("Button_Next").setVisibility(false);
            §]!9§.getItemByName("Button_Menu").x = this.§[!`§[0] + Math.abs(this.§[!`§[1] - this.§[!`§[0]) / 2;
            §]!9§.getItemByName("Button_Replay").x = this.§[!`§[1] + Math.abs(this.§[!`§[2] - this.§[!`§[1]) / 2 + §]!9§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §"!S§.§-!7§.§%2§(true);
         this.§+!_§.§4!?§(0.7);
         this.§3f§(§4!_§.§]#§(§,4§.§;!4§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §,4§.§0!$§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§`!e§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=p§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §=p§.STATE_STATUS_COMPLETED;
         }
         return §=p§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+!_§.§import§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §<r§.§4=§();
               mNextState = §<r§.§@o§;
               break;
            case "REPLAY":
               §<r§.§0^§();
               mNextState = §<r§.§@o§;
               break;
            case "MENU":
               §&M§.§=!7§();
               mNextState = §,L§.§[!;§;
         }
      }
   }
}
