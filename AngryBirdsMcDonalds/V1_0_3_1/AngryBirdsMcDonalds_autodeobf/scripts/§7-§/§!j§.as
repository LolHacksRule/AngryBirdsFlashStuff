package §7-§
{
   import § !Y§.§2#§;
   import §&!V§.§=O§;
   import §,!h§.§9K§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §3g§.§%E§;
   import §=b§.§,!G§;
   import §>!%§.HighscoreSidebar;
   import §?!g§.§ !d§;
   import §?I§.§`E§;
   import §finally§.§8k§;
   
   public class §!j§ extends §[!$§
   {
      
      public static const §<@§:String = "LevelEndFailState";
       
      
      private var §-!_§:§9K§;
      
      private var §`!_§:Array;
      
      public function §!j§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§`!_§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §"!n§(this);
         mUIView.init(§%E§.§[i§.Views.View_LevelEndFail[0]);
         this.§!B§();
         this.§-!_§ = new §9K§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§-!_§,mUIView.movieClip.numChildren - 1);
      }
      
      protected function §!B§() : void
      {
         this.§`!_§.push(mUIView.getItemByName("Button_Menu").x);
         this.§`!_§.push(mUIView.getItemByName("Button_Replay").x);
         this.§`!_§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §<z§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§`!_§[0];
            mUIView.getItemByName("Button_Replay").x = this.§`!_§[1];
            mUIView.getItemByName("Button_Next").x = this.§`!_§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§`!_§[0] + Math.abs(this.§`!_§[1] - this.§`!_§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§`!_§[1] + Math.abs(this.§`!_§[2] - this.§`!_§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §2#§.§"@§.§0f§(true);
         this.§-!_§.§%b§(0.7);
         var _loc2_:String = §8k§.§4!c§();
         var _loc3_:Boolean = §,!G§.§&N§(_loc2_);
         if(_loc2_ == "2-3" || _loc2_ == "2-6")
         {
            _loc3_ = false;
         }
         this.§<z§(_loc3_);
         §`E§.§@!7§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §`E§.§@!7§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §8k§.§8h§;
         if(§,!G§.§0g§(§8k§.§8h§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§?[§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§>2§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=O§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §=O§.STATE_STATUS_COMPLETED;
         }
         return §=O§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-!_§.§`r§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §"_§.§@<§();
               mNextState = §"_§.§<@§;
               break;
            case "REPLAY":
               §"_§.§ !D§();
               mNextState = §"_§.§<@§;
               break;
            case "MENU":
               § !d§.§;O§();
               mNextState = §2!M§.§4@§;
         }
      }
   }
}
