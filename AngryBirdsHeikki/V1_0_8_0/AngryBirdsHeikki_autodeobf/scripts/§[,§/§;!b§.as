package §[,§
{
   import §!a§.§&6§;
   import §#!+§.§"$§;
   import §#!+§.§?V§;
   import §#!T§.§&2§;
   import §#;§.§42§;
   import §0!&§.§@=§;
   import §0;§.§]U§;
   import §5!5§.§1!4§;
   import §;!0§.§4!I§;
   import §`V§.HighscoreSidebar;
   
   public class §;!b§ extends §<!Y§
   {
      
      public static const §+Z§:String = "LevelEndFailState";
       
      
      private var § !D§:§1!4§;
      
      private var §0[§:Array;
      
      public function §;!b§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§0[§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[L§ = new §"$§(this);
         §[L§.init(§?V§.§-2§.Views.View_LevelEndFail[0]);
         this.§>l§();
         this.§ !D§ = new §1!4§(0,0,0,0);
         §[L§.movieClip.addChildAt(this.§ !D§,§[L§.movieClip.numChildren - 1);
      }
      
      protected function §>l§() : void
      {
         this.§0[§.push(§[L§.getItemByName("Button_Menu").x);
         this.§0[§.push(§[L§.getItemByName("Button_Replay").x);
         this.§0[§.push(§[L§.getItemByName("Button_Next").x);
      }
      
      protected function §-s§(param1:Boolean) : void
      {
         §[L§.getItemByName("Button_Menu").setVisibility(true);
         §[L§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §[L§.getItemByName("Button_Next").setVisibility(true);
            §[L§.getItemByName("Button_Menu").x = this.§0[§[0];
            §[L§.getItemByName("Button_Replay").x = this.§0[§[1];
            §[L§.getItemByName("Button_Next").x = this.§0[§[2];
         }
         else
         {
            §[L§.getItemByName("Button_Next").setVisibility(false);
            §[L§.getItemByName("Button_Menu").x = this.§0[§[0] + Math.abs(this.§0[§[1] - this.§0[§[0]) / 2;
            §[L§.getItemByName("Button_Replay").x = this.§0[§[1] + Math.abs(this.§0[§[2] - this.§0[§[1]) / 2 + §[L§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §&2§.§4!1§.§5h§(true);
         this.§ !D§.§?!%§(0.7);
         this.§-s§(§]U§.§&g§(§@=§.§1+§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §@=§.§!!S§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§2§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §&6§.STATE_STATUS_COMPLETED;
         }
         return §&6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ !D§.§[m§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §4!M§.§@!d§();
               mNextState = §4!M§.§+Z§;
               break;
            case "REPLAY":
               §4!M§.§>5§();
               mNextState = §4!M§.§+Z§;
               break;
            case "MENU":
               §42§.§<!_§();
               mNextState = §2!S§.§1!b§;
         }
      }
   }
}
