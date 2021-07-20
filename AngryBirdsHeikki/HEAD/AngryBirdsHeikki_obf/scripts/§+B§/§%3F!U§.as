package §+B§
{
   import §#%§.§70§;
   import §+!M§.§7!0§;
   import §-!f§.§ else§;
   import §-!f§.§=T§;
   import §7e§.§#w§;
   import §8O§.§&#§;
   import §=!§.HighscoreSidebar;
   import §>!G§.§6!9§;
   import §^f§.§<q§;
   import §use §.§;0§;
   
   public class §?!U§ extends §-2§
   {
      
      public static const §[!%§:String = "LevelEndFailState";
       
      
      private var §[!V§:§;0§;
      
      private var §#!c§:Array;
      
      public function §?!U§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§#!c§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § ,§ = new § else§(this);
         § ,§.init(§=T§.§2,§.Views.View_LevelEndFail[0]);
         this.§3!0§();
         this.§[!V§ = new §;0§(0,0,0,0);
         § ,§.movieClip.addChildAt(this.§[!V§,§ ,§.movieClip.numChildren - 1);
      }
      
      protected function §3!0§() : void
      {
         this.§#!c§.push(§ ,§.getItemByName("Button_Menu").x);
         this.§#!c§.push(§ ,§.getItemByName("Button_Replay").x);
         this.§#!c§.push(§ ,§.getItemByName("Button_Next").x);
      }
      
      protected function §[s§(param1:Boolean) : void
      {
         § ,§.getItemByName("Button_Menu").setVisibility(true);
         § ,§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            § ,§.getItemByName("Button_Next").setVisibility(true);
            § ,§.getItemByName("Button_Menu").x = this.§#!c§[0];
            § ,§.getItemByName("Button_Replay").x = this.§#!c§[1];
            § ,§.getItemByName("Button_Next").x = this.§#!c§[2];
         }
         else
         {
            § ,§.getItemByName("Button_Next").setVisibility(false);
            § ,§.getItemByName("Button_Menu").x = this.§#!c§[0] + Math.abs(this.§#!c§[1] - this.§#!c§[0]) / 2;
            § ,§.getItemByName("Button_Replay").x = this.§#!c§[1] + Math.abs(this.§#!c§[2] - this.§#!c§[1]) / 2 + § ,§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §&#§.§3!D§.§"!E§(true);
         this.§[!V§.§^;§(0.7);
         this.§[s§(§70§.§<!D§(§#w§.§7$§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §#w§.§ !'§;
         sHighscoreSidebar.changeState(HighscoreSidebar.§%!L§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!9§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         return §6!9§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§[!V§.§[!,§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §1!g§.§]M§();
               mNextState = §1!g§.§[!%§;
               break;
            case "REPLAY":
               §1!g§.§3!4§();
               mNextState = §1!g§.§[!%§;
               break;
            case "MENU":
               §<q§.§2M§();
               mNextState = §"!R§.§54§;
         }
      }
   }
}
