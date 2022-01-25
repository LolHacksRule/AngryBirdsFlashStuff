package §>I§
{
   import § !C§.§6!W§;
   import § ]§.HighscoreSidebar;
   import §%!^§.§"=§;
   import §&V§.§9t§;
   import §-"§.§,_§;
   import §0!_§.§>!'§;
   import §0!b§.§#!=§;
   import §^6§.§5@§;
   import §^6§.§;l§;
   
   public class §8;§ extends §for §
   {
      
      public static const § !P§:String = "LevelEndFailState3";
       
      
      private var §,]§:§>!'§;
      
      private var §>V§:Array;
      
      public function §8;§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         this.§>V§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^!;§ = new §;l§(this);
         §^!;§.init(§5@§.§^!1§.Views.View_LevelEndFail3[0]);
         this.§ e§();
         this.§,]§ = new §>!'§(0,0,0,0);
         §^!;§.movieClip.addChildAt(this.§,]§,§^!;§.movieClip.numChildren - 1);
      }
      
      protected function § e§() : void
      {
         this.§>V§.push(§^!;§.getItemByName("Button_Menu").x);
         this.§>V§.push(§^!;§.getItemByName("Button_Replay").x);
         this.§>V§.push(§^!;§.getItemByName("Button_Next").x);
      }
      
      protected function §,2§(param1:Boolean) : void
      {
         §^!;§.getItemByName("Button_Menu").setVisibility(true);
         §^!;§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §^!;§.getItemByName("Button_Next").setVisibility(true);
            §^!;§.getItemByName("Button_Menu").x = this.§>V§[0];
            §^!;§.getItemByName("Button_Replay").x = this.§>V§[1];
            §^!;§.getItemByName("Button_Next").x = this.§>V§[2];
         }
         else
         {
            §^!;§.getItemByName("Button_Next").setVisibility(false);
            §^!;§.getItemByName("Button_Menu").x = this.§>V§[0] + Math.abs(this.§>V§[1] - this.§>V§[0]) / 2;
            §^!;§.getItemByName("Button_Replay").x = this.§>V§[1] + Math.abs(this.§>V§[2] - this.§>V§[1]) / 2 + §^!;§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         §^c§.enableHelpButton(false);
         §#!=§.§&![§.§[!&§(true);
         this.§,]§.§6k§(0.7);
         this.§,2§(§,_§.§%!F§(§"=§.§9D§()));
      }
      
      override protected function setInitialState() : void
      {
         if(§"=§.§<q§ == 0)
         {
            §^c§.changeState(HighscoreSidebar.§=8§);
         }
         else
         {
            §^c§.changeState(§^c§.currentState);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         return §6!W§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§,]§.§;!E§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §]#§.§7w§();
               mNextState = §]#§.§ !P§;
               break;
            case "REPLAY":
               §]#§.§[4§();
               mNextState = §]#§.§ !P§;
               break;
            case "MENU":
               mNextState = §-!#§.§2t§;
         }
      }
   }
}
