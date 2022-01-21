package §%<§
{
   import §'!W§.§>!m§;
   import §-!#§.§5!6§;
   import §-1§.§%#§;
   import §1!D§.§0S§;
   import §2o§.§<H§;
   import §3#§.HighscoreSidebar;
   import §9!8§.§0!7§;
   import §9!8§.§8n§;
   import §?H§.§>!!§;
   import §^5§.§]!,§;
   import §`!d§.§7!§;
   
   public class §4!]§ extends §+V§
   {
      
      public static const §<P§:String = "LevelEndFailState";
       
      
      private var § !§:§>!m§;
      
      private var §"!'§:Array;
      
      public function §4!]§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§"!'§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §0!7§(this);
         mUIView.init(§8n§.§8C§.Views.View_LevelEndFail[0]);
         this.§5!?§();
         this.§ !§ = new §>!m§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§ !§,mUIView.movieClip.numChildren - 1);
      }
      
      protected function §5!?§() : void
      {
         this.§"!'§.push(mUIView.getItemByName("Button_Menu").x);
         this.§"!'§.push(mUIView.getItemByName("Button_Replay").x);
         this.§"!'§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §#!k§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§"!'§[0];
            mUIView.getItemByName("Button_Replay").x = this.§"!'§[1];
            mUIView.getItemByName("Button_Next").x = this.§"!'§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§"!'§[0] + Math.abs(this.§"!'§[1] - this.§"!'§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§"!'§[1] + Math.abs(this.§"!'§[2] - this.§"!'§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §<H§.§=3§.§&e§(true);
         this.§ !§.§ !!§(0.7);
         var _loc2_:String = §7!§.§<n§();
         var _loc3_:Boolean = §>!!§.§3N§(_loc2_);
         if(_loc2_ == "2-3" || _loc2_ == "2-6")
         {
            _loc3_ = false;
         }
         this.§#!k§(_loc3_);
         §0S§.§>E§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §0S§.§>E§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §7!§.§+e§;
         if(§>!!§.§8S§(§7!§.§+e§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§-I§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§0C§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §]!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         return §]!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ !§.§,!X§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §%!$§.§?!9§();
               mNextState = §%!$§.§<P§;
               break;
            case "REPLAY":
               §%!$§.§^!?§();
               mNextState = §%!$§.§<P§;
               break;
            case "MENU":
               §5!6§.§#!a§();
               mNextState = §;!4§.§9!1§;
         }
      }
   }
}
