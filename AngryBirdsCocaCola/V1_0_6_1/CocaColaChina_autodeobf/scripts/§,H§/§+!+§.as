package §,H§
{
   import §%!c§.§@2§;
   import §%3§.§7b§;
   import §%3§.§>!A§;
   import §+!6§.HighscoreSidebar;
   import §3U§.§2!%§;
   import §4!W§.§@R§;
   import §7!H§.§12§;
   import §;A§.§7!K§;
   import §@W§.§2!_§;
   
   public class §+!+§ extends §1!a§
   {
      
      public static const §^!O§:String = "LevelEndFailState3";
       
      
      private var §]!]§:§@R§;
      
      private var §'U§:Array;
      
      public function §+!+§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         this.§'U§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=!I§ = new §7b§(this);
         §=!I§.init(§>!A§.§;&§.Views.View_LevelEndFail3[0]);
         this.§`g§();
         this.§]!]§ = new §@R§(0,0,0,0);
         §=!I§.movieClip.addChildAt(this.§]!]§,§=!I§.movieClip.numChildren - 1);
      }
      
      protected function §`g§() : void
      {
         this.§'U§.push(§=!I§.getItemByName("Button_Menu").x);
         this.§'U§.push(§=!I§.getItemByName("Button_Replay").x);
         this.§'U§.push(§=!I§.getItemByName("Button_Next").x);
      }
      
      protected function §2s§(param1:Boolean) : void
      {
         §=!I§.getItemByName("Button_Menu").setVisibility(true);
         §=!I§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §=!I§.getItemByName("Button_Next").setVisibility(true);
            §=!I§.getItemByName("Button_Menu").x = this.§'U§[0];
            §=!I§.getItemByName("Button_Replay").x = this.§'U§[1];
            §=!I§.getItemByName("Button_Next").x = this.§'U§[2];
         }
         else
         {
            §=!I§.getItemByName("Button_Next").setVisibility(false);
            §=!I§.getItemByName("Button_Menu").x = this.§'U§[0] + Math.abs(this.§'U§[1] - this.§'U§[0]) / 2;
            §=!I§.getItemByName("Button_Replay").x = this.§'U§[1] + Math.abs(this.§'U§[2] - this.§'U§[1]) / 2 + §=!I§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         §+D§.enableHelpButton(false);
         §7!K§.§=j§.§ i§(true);
         this.§]!]§.§=@§(0.7);
         this.§2s§(§@2§.§ case§(§2!%§.§>1§()));
      }
      
      override protected function setInitialState() : void
      {
         if(§2!%§.§[!=§ == 0)
         {
            §+D§.changeState(HighscoreSidebar.§=!"§);
         }
         else
         {
            §+D§.changeState(§+D§.currentState);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         return §2!_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]!]§.§9v§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §5d§.§[!8§();
               mNextState = §5d§.§^!O§;
               break;
            case "REPLAY":
               §5d§.§=O§();
               mNextState = §5d§.§^!O§;
               break;
            case "MENU":
               mNextState = §6T§.§-5§;
         }
      }
   }
}
