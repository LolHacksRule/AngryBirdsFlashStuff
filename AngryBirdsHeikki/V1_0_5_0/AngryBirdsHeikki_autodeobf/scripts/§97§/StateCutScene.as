package §97§
{
   import § !Y§.§7§;
   import § !Y§.§if§;
   import §2H§.§>!^§;
   import §93§.§^!H§;
   import §=!c§.§^"§;
   import §=X§.§7!4§;
   import §>!J§.§>!c§;
   import §@=§.§'3§;
   
   public class StateCutScene extends §62§
   {
      
      public static const §4l§:String = "StateCutScene";
      
      private static var §5H§:Boolean = false;
       
      
      private var §^!,§:§>!c§;
      
      private var §]!Y§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §[!6§(param1:Boolean) : void
      {
         §5H§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §>l§ = new §'3§(75,0,0,1);
         §?P§ = new §if§(this);
         §?P§.init(§7§.§5!@§.Views.View_CutScene[0]);
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         §?P§.getItemByName("Button_Tutorial").setVisibility(false);
         sHighscoreSidebar.enableCreditsButton(false);
         sHighscoreSidebar.enableLogOutButton(false);
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHighScoreTab(true);
         this.§]!Y§ = false;
         if(!§5H§)
         {
            mNextState = §]!X§.§4l§;
         }
         (§?P§.getItemByName("MovieClip_CutSceneHelmet") as §^"§).§]S§("Start");
         (§?P§.getItemByName("MovieClip_CutSceneHelmet") as §^"§).§;!V§ = true;
         (§?P§.getItemByName("MovieClip_CutSceneHelmet") as §^"§).setVisibility(true);
      }
      
      private function §#q§() : String
      {
         var _loc1_:String = §7!4§.§6<§;
         var _loc2_:String = §7!4§.§%9§().§@!<§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§7!4§.§>=§)
         {
            _loc1_ = §7!4§.§"P§;
            _loc2_ = §7!4§.§%9§().§@!<§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         §?P§.getItemByName("Button_Skip").setVisibility(false);
         §5H§ = false;
         (§?P§.getItemByName("MovieClip_CutSceneHelmet") as §^"§).§]S§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§]!Y§ = true;
               mNextState = §88§.§4l§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         §?P§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§]!Y§)
         {
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§"!§(§?P§.getItemByName("MovieClip_CutSceneHelmet") as §^"§,param1);
         if(mNextState.length > 0)
         {
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         return §>!^§.STATE_STATUS_RUNNING;
      }
      
      private function §"!§(param1:§^"§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§;!V§ == true)
         {
            _loc3_ = param1.§2_§(param2);
            if(_loc3_ == "End")
            {
               param1.§;!V§ = false;
            }
         }
      }
   }
}
