package
{
   import §#!q§.§`q§;
   import §%!5§.§7;§;
   import §+$§.§[!a§;
   import §-!F§.§2[§;
   import §3<§.§-2§;
   import §3<§.§9&§;
   import §6x§.§9E§;
   import §7!N§.§0-§;
   import §7E§.§ =§;
   import §9!$§.HighscoreSidebar;
   import §]^§.§7G§;
   
   public class §2!Q§ extends §2'§
   {
      
      public static const §[!1§:String = "LevelEndFailState";
       
      
      private var §4?§:§9E§;
      
      private var §1!V§:Array;
      
      public function §2!Q§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§1!V§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §-2§(this);
         mUIView.init(§9&§.§6!M§.Views.View_LevelEndFail[0]);
         this.§2!&§();
         this.§4?§ = new §9E§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§4?§,mUIView.movieClip.numChildren - 1);
      }
      
      protected function §2!&§() : void
      {
         this.§1!V§.push(mUIView.getItemByName("Button_Menu").x);
         this.§1!V§.push(mUIView.getItemByName("Button_Replay").x);
         this.§1!V§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §<V§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§1!V§[0];
            mUIView.getItemByName("Button_Replay").x = this.§1!V§[1];
            mUIView.getItemByName("Button_Next").x = this.§1!V§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§1!V§[0] + Math.abs(this.§1!V§[1] - this.§1!V§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§1!V§[1] + Math.abs(this.§1!V§[2] - this.§1!V§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §7;§.§1h§.§4!@§(true);
         this.§4?§.§7!&§(0.7);
         var _loc2_:String = §2[§.§+G§();
         var _loc3_:Boolean = §0-§.§1!L§(_loc2_);
         if(_loc2_ == "2-3" || _loc2_ == "2-6")
         {
            _loc3_ = false;
         }
         this.§<V§(_loc3_);
         §`q§.§9$§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §`q§.§9$§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §2[§.§^N§;
         if(§0-§.§-5§(§2[§.§^N§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§3!K§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§2!R§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § =§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return § =§.STATE_STATUS_COMPLETED;
         }
         return § =§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4?§.§'x§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §"e§.§=!8§();
               mNextState = §"e§.§[!1§;
               break;
            case "REPLAY":
               §"e§.§`!"§();
               mNextState = §"e§.§[!1§;
               break;
            case "MENU":
               §7G§.§]!Z§();
               mNextState = §9!_§.§9§;
         }
      }
   }
}
