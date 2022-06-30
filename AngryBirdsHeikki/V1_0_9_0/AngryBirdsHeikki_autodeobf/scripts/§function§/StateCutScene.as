package §function§
{
   import §#Q§.§8#§;
   import §#Q§.§8Y§;
   import §&!6§.§5r§;
   import §'!C§.§-!S§;
   import §1Q§.§'!`§;
   import §8! §.§#z§;
   import §>X§.§[7§;
   import §@!]§.§%k§;
   
   public class StateCutScene extends §1!@§
   {
      
      public static const §94§:String = "StateCutScene";
      
      private static var §+E§:Boolean = false;
       
      
      private var §@#§:§[7§;
      
      private var §'!#§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §0H§(param1:Boolean) : void
      {
         §+E§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §;'§ = new §-!S§(75,0,0,1);
         §@K§ = new §8Y§(this);
         §@K§.init(§8#§.§6K§.Views.View_CutScene[0]);
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         §@K§.getItemByName("Button_Tutorial").setVisibility(false);
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
         this.§'!#§ = false;
         if(!§+E§)
         {
            mNextState = §8E§.§94§;
         }
         (§@K§.getItemByName("MovieClip_CutSceneHelmet") as §%k§).§>V§("Start");
         (§@K§.getItemByName("MovieClip_CutSceneHelmet") as §%k§).§0m§ = true;
         (§@K§.getItemByName("MovieClip_CutSceneHelmet") as §%k§).setVisibility(true);
      }
      
      private function §!!@§() : String
      {
         var _loc1_:String = §#z§.§-y§;
         var _loc2_:String = §#z§.§ !e§().§2N§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§#z§.§%!?§)
         {
            _loc1_ = §#z§.§@k§;
            _loc2_ = §#z§.§ !e§().§2N§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         §@K§.getItemByName("Button_Skip").setVisibility(false);
         §+E§ = false;
         (§@K§.getItemByName("MovieClip_CutSceneHelmet") as §%k§).§>V§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§'!#§ = true;
               mNextState = §^,§.§94§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         §@K§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§'!#§)
         {
            return §5r§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5r§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§;0§(§@K§.getItemByName("MovieClip_CutSceneHelmet") as §%k§,param1);
         if(mNextState.length > 0)
         {
            return §5r§.STATE_STATUS_COMPLETED;
         }
         return §5r§.STATE_STATUS_RUNNING;
      }
      
      private function §;0§(param1:§%k§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§0m§ == true)
         {
            _loc3_ = param1.§,G§(param2);
            if(_loc3_ == "End")
            {
               param1.§0m§ = false;
            }
         }
      }
   }
}
