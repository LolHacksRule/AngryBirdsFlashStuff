package §4%§
{
   import § !m§.§6h§;
   import § v§.§!!^§;
   import §"%§.§,!n§;
   import §+-§.§3!5§;
   import §6!Q§.§ !"§;
   import §9!W§.§=!@§;
   import §;!j§.§[!<§;
   import §@`§.§>!S§;
   import §@`§.§]8§;
   import §]! §.HighscoreSidebar;
   import §]!S§.§59§;
   
   public class §=!J§ extends §%0§
   {
      
      public static const §4D§:String = "LevelEndFailState";
       
      
      private var §<!7§:§59§;
      
      private var §^!n§:Array;
      
      public function §=!J§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§^!n§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §>!S§(this);
         mUIView.init(§]8§.§-!C§.Views.View_LevelEndFail[0]);
         this.§5!I§();
         this.§<!7§ = new §59§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§<!7§,mUIView.movieClip.numChildren - 1);
      }
      
      protected function §5!I§() : void
      {
         this.§^!n§.push(mUIView.getItemByName("Button_Menu").x);
         this.§^!n§.push(mUIView.getItemByName("Button_Replay").x);
         this.§^!n§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §3!,§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§^!n§[0];
            mUIView.getItemByName("Button_Replay").x = this.§^!n§[1];
            mUIView.getItemByName("Button_Next").x = this.§^!n§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§^!n§[0] + Math.abs(this.§^!n§[1] - this.§^!n§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§^!n§[1] + Math.abs(this.§^!n§[2] - this.§^!n§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §=!@§.§>!T§.§>h§(true);
         this.§<!7§.§1!M§(0.7);
         var _loc2_:String = §3!5§.§@!4§();
         var _loc3_:Boolean = §!!^§.§!q§(_loc2_);
         if(_loc2_ == "2-3" || _loc2_ == "2-6")
         {
            _loc3_ = false;
         }
         this.§3!,§(_loc3_);
         §[!<§.§'!S§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §[!<§.§'!S§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §3!5§.§-!2§;
         if(§!!^§.§use§(§3!5§.§-!2§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§3!%§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§=j§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !"§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return § !"§.STATE_STATUS_COMPLETED;
         }
         return § !"§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<!7§.§&S§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §,b§.§[K§();
               mNextState = §,b§.§4D§;
               break;
            case "REPLAY":
               §,b§.§1i§();
               mNextState = §,b§.§4D§;
               break;
            case "MENU":
               §6h§.§>!U§();
               mNextState = §'j§.§4h§;
         }
      }
   }
}
