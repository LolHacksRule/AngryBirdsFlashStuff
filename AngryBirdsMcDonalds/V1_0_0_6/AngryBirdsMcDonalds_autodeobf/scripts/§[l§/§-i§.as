package §[l§
{
   import § e§.§&!&§;
   import §#M§.§+!Z§;
   import §'d§.§8!]§;
   import §0;§.§3=§;
   import §0;§.§`!`§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §7!Q§.§[!5§;
   import §7_§.§^d§;
   import §<!R§.HighscoreSidebar;
   import §^!K§.§ !$§;
   
   public class §-i§ extends §,Q§
   {
      
      public static const §!_§:String = "LevelEndFailState";
       
      
      private var §7!8§:§8!]§;
      
      private var §5@§:Array;
      
      public function §-i§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         this.§5@§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §3=§(this);
         mUIView.init(§`!`§.§2=§.Views.View_LevelEndFail[0]);
         this.§@!n§();
         this.§7!8§ = new §8!]§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§7!8§,mUIView.movieClip.numChildren - 1);
      }
      
      protected function §@!n§() : void
      {
         this.§5@§.push(mUIView.getItemByName("Button_Menu").x);
         this.§5@§.push(mUIView.getItemByName("Button_Replay").x);
         this.§5@§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §6!"§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§5@§[0];
            mUIView.getItemByName("Button_Replay").x = this.§5@§[1];
            mUIView.getItemByName("Button_Next").x = this.§5@§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§5@§[0] + Math.abs(this.§5@§[1] - this.§5@§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§5@§[1] + Math.abs(this.§5@§[2] - this.§5@§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §+!Z§.§?!<§.§,!7§(true);
         this.§7!8§.§-p§(0.7);
         var _loc2_:String = §^d§.§3!B§();
         var _loc3_:Boolean = §[!5§.§'A§(_loc2_);
         if(_loc2_ == "2-3" || _loc2_ == "2-6")
         {
            _loc3_ = false;
         }
         this.§6!"§(_loc3_);
         §&!&§.§+j§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §&!&§.§+j§.updateTextFields(mUIView,"StateEndFail");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §^d§.§@P§;
         if(§[!5§.§1G§(§^d§.§@P§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§!N§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§ each§);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!b§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         return §1!b§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7!8§.§9!S§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §26§.§;!J§();
               mNextState = §26§.§!_§;
               break;
            case "REPLAY":
               §26§.§4;§();
               mNextState = §26§.§!_§;
               break;
            case "MENU":
               § !$§.§?j§();
               mNextState = § 4§.§#!m§;
         }
      }
   }
}
