package §7-§
{
   import §&!V§.§=O§;
   import §,!h§.§9K§;
   import §2y§.§4i§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §3g§.§%E§;
   import §[>§.§[!o§;
   import §finally§.§8k§;
   
   public class StateCutScene extends §[!$§
   {
      
      public static const §<@§:String = "StateCutScene";
      
      private static var §;'§:Boolean = false;
       
      
      private var §35§:§[!o§;
      
      private var §=!!§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §1!A§(param1:Boolean) : void
      {
         §;'§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §<!o§ = new §9K§(75,0,0,1);
         mUIView = new §"!n§(this);
         mUIView.init(§%E§.§[i§.Views.View_CutScene[0]);
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
         this.§=!!§ = false;
         if(!§;'§)
         {
            mNextState = §"_§.§<@§;
         }
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §4i§).§0!Z§("Start");
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §4i§).§8!N§ = true;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §4i§).setVisibility(true);
      }
      
      private function §%9§() : String
      {
         var _loc1_:String = §8k§.§-!U§;
         var _loc2_:String = §8k§.§7!_§().§<!f§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§8k§.§#8§)
         {
            _loc1_ = §8k§.§8h§;
            _loc2_ = §8k§.§7!_§().§<!f§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         mUIView.getItemByName("Button_Skip").setVisibility(false);
         §;'§ = false;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §4i§).§0!Z§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§=!!§ = true;
               mNextState = §-e§.§<@§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         mUIView.getItemByName("Button_Skip").setVisibility(true);
         if(this.§=!!§)
         {
            return §=O§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=O§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§+!1§(mUIView.getItemByName("MovieClip_CutSceneHelmet") as §4i§,param1);
         if(mNextState.length > 0)
         {
            return §=O§.STATE_STATUS_COMPLETED;
         }
         return §=O§.STATE_STATUS_RUNNING;
      }
      
      private function §+!1§(param1:§4i§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§8!N§ == true)
         {
            _loc3_ = param1.§'f§(param2);
            if(_loc3_ == "End")
            {
               param1.§8!N§ = false;
            }
         }
      }
   }
}
