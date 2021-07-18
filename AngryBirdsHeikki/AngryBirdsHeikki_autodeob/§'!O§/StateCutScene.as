package §'!O§
{
   import §'!N§.§25§;
   import §-!"§.§=p§;
   import §7Z§.§%!b§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §^!5§.§,4§;
   
   public class StateCutScene extends §=j§
   {
      
      public static const §@o§:String = "StateCutScene";
      
      private static var §=!§:Boolean = false;
       
      
      private var §=!_§:§%!b§;
      
      private var §7C§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §1c§(param1:Boolean) : void
      {
         §=!§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §4!N§ = new §-k§(75,0,0,1);
         §]!9§ = new §]!Q§(this);
         §]!9§.init(§;A§.§=I§.Views.View_CutScene[0]);
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         §]!9§.getItemByName("Button_Tutorial").setVisibility(false);
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
         this.§7C§ = false;
         if(!§=!§)
         {
            mNextState = §<r§.§@o§;
         }
         (§]!9§.getItemByName("MovieClip_CutSceneHelmet") as §25§).§<v§("Start");
         (§]!9§.getItemByName("MovieClip_CutSceneHelmet") as §25§).§&A§ = true;
         (§]!9§.getItemByName("MovieClip_CutSceneHelmet") as §25§).setVisibility(true);
      }
      
      private function §0![§() : String
      {
         var _loc1_:String = §,4§.§<A§;
         var _loc2_:String = §,4§.§?!>§().§4V§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§,4§.§58§)
         {
            _loc1_ = §,4§.§0!$§;
            _loc2_ = §,4§.§?!>§().§4V§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         §]!9§.getItemByName("Button_Skip").setVisibility(false);
         §=!§ = false;
         (§]!9§.getItemByName("MovieClip_CutSceneHelmet") as §25§).§<v§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§7C§ = true;
               mNextState = §<n§.§@o§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         §]!9§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§7C§)
         {
            return §=p§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=p§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§'H§(§]!9§.getItemByName("MovieClip_CutSceneHelmet") as §25§,param1);
         if(mNextState.length > 0)
         {
            return §=p§.STATE_STATUS_COMPLETED;
         }
         return §=p§.STATE_STATUS_RUNNING;
      }
      
      private function §'H§(param1:§25§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§&A§ == true)
         {
            _loc3_ = param1.§>Z§(param2);
            if(_loc3_ == "End")
            {
               param1.§&A§ = false;
            }
         }
      }
   }
}
