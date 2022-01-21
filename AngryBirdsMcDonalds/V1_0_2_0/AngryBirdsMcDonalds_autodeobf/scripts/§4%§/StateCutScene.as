package §4%§
{
   import §"%§.§,!n§;
   import §+-§.§3!5§;
   import §6!Q§.§ !"§;
   import §9L§.§8!V§;
   import §>G§.§[f§;
   import §@`§.§>!S§;
   import §@`§.§]8§;
   import §]!S§.§59§;
   
   public class StateCutScene extends §%0§
   {
      
      public static const §4D§:String = "StateCutScene";
      
      private static var §2L§:Boolean = false;
       
      
      private var §6!K§:§8!V§;
      
      private var §9[§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §2I§(param1:Boolean) : void
      {
         §2L§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §%L§ = new §59§(75,0,0,1);
         mUIView = new §>!S§(this);
         mUIView.init(§]8§.§-!C§.Views.View_CutScene[0]);
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
         this.§9[§ = false;
         if(!§2L§)
         {
            mNextState = §,b§.§4D§;
         }
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §[f§).§9!@§("Start");
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §[f§).§['§ = true;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §[f§).setVisibility(true);
      }
      
      private function §>!5§() : String
      {
         var _loc1_:String = §3!5§.§&z§;
         var _loc2_:String = §3!5§.§#!X§().§?!U§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§3!5§.§ !B§)
         {
            _loc1_ = §3!5§.§-!2§;
            _loc2_ = §3!5§.§#!X§().§?!U§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         mUIView.getItemByName("Button_Skip").setVisibility(false);
         §2L§ = false;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §[f§).§9!@§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§9[§ = true;
               mNextState = §9!Z§.§4D§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         mUIView.getItemByName("Button_Skip").setVisibility(true);
         if(this.§9[§)
         {
            return § !"§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !"§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§ !T§(mUIView.getItemByName("MovieClip_CutSceneHelmet") as §[f§,param1);
         if(mNextState.length > 0)
         {
            return § !"§.STATE_STATUS_COMPLETED;
         }
         return § !"§.STATE_STATUS_RUNNING;
      }
      
      private function § !T§(param1:§[f§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§['§ == true)
         {
            _loc3_ = param1.§<@§(param2);
            if(_loc3_ == "End")
            {
               param1.§['§ = false;
            }
         }
      }
   }
}
