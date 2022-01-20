package §5!W§
{
   import §#!1§.§!!X§;
   import §,!H§.§ for§;
   import §,4§.§;_§;
   import §-a§.§5C§;
   import §0$§.§!t§;
   import §5!q§.HighscoreSidebar;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §7p§.§>!m§;
   import §@-§.§[y§;
   import §[!4§.§-#§;
   
   public class §#!X§ extends §`X§
   {
      
      public static const §>d§:String = "LevelEndFailState";
       
      
      private var §^S§:§5C§;
      
      private var §?!"§:Array;
      
      public function §#!X§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§?!"§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §%g§(this);
         mUIView.init(§>!m§.§9c§.Views.View_LevelEndFail[0]);
         this.§5w§();
         this.§^S§ = new §5C§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§^S§,mUIView.movieClip.numChildren - 1);
      }
      
      protected function §5w§() : void
      {
         this.§?!"§.push(mUIView.getItemByName("Button_Menu").x);
         this.§?!"§.push(mUIView.getItemByName("Button_Replay").x);
         this.§?!"§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §[!P§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§?!"§[0];
            mUIView.getItemByName("Button_Replay").x = this.§?!"§[1];
            mUIView.getItemByName("Button_Next").x = this.§?!"§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§?!"§[0] + Math.abs(this.§?!"§[1] - this.§?!"§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§?!"§[1] + Math.abs(this.§?!"§[2] - this.§?!"§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §2M§.§1?§.§9!=§(true);
         this.§^S§.§ q§(0.7);
         var _loc2_:String = §;_§.§]!h§();
         var _loc3_:Boolean = §!t§.§>E§(_loc2_);
         if(_loc2_ == "2-3" || _loc2_ == "2-6")
         {
            _loc3_ = false;
         }
         this.§[!P§(_loc3_);
         §!!X§.§5!!§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §!!X§.§5!!§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §;_§.§2!Q§;
         if(§!t§.§0P§(§;_§.§2!Q§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§"!n§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§<! §);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § for§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return § for§.STATE_STATUS_COMPLETED;
         }
         return § for§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§^S§.§7!,§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §[Z§.§=G§();
               mNextState = §[Z§.§>d§;
               break;
            case "REPLAY":
               §[Z§.§>-§();
               mNextState = §[Z§.§>d§;
               break;
            case "MENU":
               §-#§.§4A§();
               mNextState = §3![§.§0#§;
         }
      }
   }
}
