package §+B§
{
   import §"!@§.§ !1§;
   import §+!M§.§7!0§;
   import §-!f§.§ else§;
   import §-!f§.§=T§;
   import §7e§.§#w§;
   import §>!G§.§6!9§;
   import §]!&§.§,K§;
   import §use §.§;0§;
   
   public class StateCutScene extends §-2§
   {
      
      public static const §[!%§:String = "StateCutScene";
      
      private static var §'J§:Boolean = false;
       
      
      private var §[!G§:§ !1§;
      
      private var §%1§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §=5§(param1:Boolean) : void
      {
         §'J§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §#8§ = new §;0§(75,0,0,1);
         § ,§ = new § else§(this);
         § ,§.init(§=T§.§2,§.Views.View_CutScene[0]);
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         § ,§.getItemByName("Button_Tutorial").setVisibility(false);
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
         this.§%1§ = false;
         if(!§'J§)
         {
            mNextState = §1!g§.§[!%§;
         }
         (§ ,§.getItemByName("MovieClip_CutSceneHelmet") as §,K§).§var §("Start");
         (§ ,§.getItemByName("MovieClip_CutSceneHelmet") as §,K§).§4w§ = true;
         (§ ,§.getItemByName("MovieClip_CutSceneHelmet") as §,K§).setVisibility(true);
      }
      
      private function §!!@§() : String
      {
         var _loc1_:String = §#w§.§'!L§;
         var _loc2_:String = §#w§.§,g§().§2$§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§#w§.§1!G§)
         {
            _loc1_ = §#w§.§ !'§;
            _loc2_ = §#w§.§,g§().§2$§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         § ,§.getItemByName("Button_Skip").setVisibility(false);
         §'J§ = false;
         (§ ,§.getItemByName("MovieClip_CutSceneHelmet") as §,K§).§var §("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§%1§ = true;
               mNextState = §2!c§.§[!%§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         § ,§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§%1§)
         {
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!9§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§[!$§(§ ,§.getItemByName("MovieClip_CutSceneHelmet") as §,K§,param1);
         if(mNextState.length > 0)
         {
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         return §6!9§.STATE_STATUS_RUNNING;
      }
      
      private function §[!$§(param1:§,K§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§4w§ == true)
         {
            _loc3_ = param1.§2"§(param2);
            if(_loc3_ == "End")
            {
               param1.§4w§ = false;
            }
         }
      }
   }
}
