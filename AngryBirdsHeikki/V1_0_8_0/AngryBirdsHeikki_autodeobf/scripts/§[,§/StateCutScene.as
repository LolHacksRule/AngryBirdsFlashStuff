package §[,§
{
   import §!a§.§&6§;
   import §#!+§.§"$§;
   import §#!+§.§?V§;
   import §-!V§.§+!T§;
   import §0!&§.§@=§;
   import §5!5§.§1!4§;
   import §;!0§.§4!I§;
   import §>[§.§^! §;
   
   public class StateCutScene extends §<!Y§
   {
      
      public static const §+Z§:String = "StateCutScene";
      
      private static var §4_§:Boolean = false;
       
      
      private var §5!M§:§^! §;
      
      private var §7A§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §<4§(param1:Boolean) : void
      {
         §4_§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §%L§ = new §1!4§(75,0,0,1);
         §[L§ = new §"$§(this);
         §[L§.init(§?V§.§-2§.Views.View_CutScene[0]);
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         §[L§.getItemByName("Button_Tutorial").setVisibility(false);
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
         this.§7A§ = false;
         if(!§4_§)
         {
            mNextState = §4!M§.§+Z§;
         }
         (§[L§.getItemByName("MovieClip_CutSceneHelmet") as §+!T§).§"G§("Start");
         (§[L§.getItemByName("MovieClip_CutSceneHelmet") as §+!T§).§6!W§ = true;
         (§[L§.getItemByName("MovieClip_CutSceneHelmet") as §+!T§).setVisibility(true);
      }
      
      private function §!!2§() : String
      {
         var _loc1_:String = §@=§.§?q§;
         var _loc2_:String = §@=§.§2>§().§1Q§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§@=§.§1!d§)
         {
            _loc1_ = §@=§.§!!S§;
            _loc2_ = §@=§.§2>§().§1Q§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         §[L§.getItemByName("Button_Skip").setVisibility(false);
         §4_§ = false;
         (§[L§.getItemByName("MovieClip_CutSceneHelmet") as §+!T§).§"G§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§7A§ = true;
               mNextState = §%m§.§+Z§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         §[L§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§7A§)
         {
            return §&6§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§@!F§(§[L§.getItemByName("MovieClip_CutSceneHelmet") as §+!T§,param1);
         if(mNextState.length > 0)
         {
            return §&6§.STATE_STATUS_COMPLETED;
         }
         return §&6§.STATE_STATUS_RUNNING;
      }
      
      private function §@!F§(param1:§+!T§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§6!W§ == true)
         {
            _loc3_ = param1.§=!H§(param2);
            if(_loc3_ == "End")
            {
               param1.§6!W§ = false;
            }
         }
      }
   }
}
