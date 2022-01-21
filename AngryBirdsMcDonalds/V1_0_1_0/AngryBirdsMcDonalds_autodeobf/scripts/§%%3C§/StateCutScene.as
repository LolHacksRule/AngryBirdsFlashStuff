package §%<§
{
   import §%!a§.§2!C§;
   import §'!W§.§>!m§;
   import §,![§.§7'§;
   import §-1§.§%#§;
   import §9!8§.§0!7§;
   import §9!8§.§8n§;
   import §^5§.§]!,§;
   import §`!d§.§7!§;
   
   public class StateCutScene extends §+V§
   {
      
      public static const §<P§:String = "StateCutScene";
      
      private static var §@w§:Boolean = false;
       
      
      private var §[i§:§2!C§;
      
      private var §const§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §-'§(param1:Boolean) : void
      {
         §@w§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §=F§ = new §>!m§(75,0,0,1);
         mUIView = new §0!7§(this);
         mUIView.init(§8n§.§8C§.Views.View_CutScene[0]);
      }
      
      override protected function setInitialState() : void
      {
         mUIView.getItemByName("Button_Tutorial").setVisibility(false);
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
         this.§const§ = false;
         if(!§@w§)
         {
            mNextState = §%!$§.§<P§;
         }
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §7'§).§9B§("Start");
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §7'§).§=!n§ = true;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §7'§).setVisibility(true);
      }
      
      private function §+l§() : String
      {
         var _loc1_:String = §7!§.§7_§;
         var _loc2_:String = §7!§.§;!k§().§6;§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§7!§.§>!k§)
         {
            _loc1_ = §7!§.§+e§;
            _loc2_ = §7!§.§;!k§().§6;§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         mUIView.getItemByName("Button_Skip").setVisibility(false);
         §@w§ = false;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §7'§).§9B§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§const§ = true;
               mNextState = §=@§.§<P§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         mUIView.getItemByName("Button_Skip").setVisibility(true);
         if(this.§const§)
         {
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §]!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§9!<§(mUIView.getItemByName("MovieClip_CutSceneHelmet") as §7'§,param1);
         if(mNextState.length > 0)
         {
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         return §]!,§.STATE_STATUS_RUNNING;
      }
      
      private function §9!<§(param1:§7'§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§=!n§ == true)
         {
            _loc3_ = param1.§?!Z§(param2);
            if(_loc3_ == "End")
            {
               param1.§=!n§ = false;
            }
         }
      }
   }
}
