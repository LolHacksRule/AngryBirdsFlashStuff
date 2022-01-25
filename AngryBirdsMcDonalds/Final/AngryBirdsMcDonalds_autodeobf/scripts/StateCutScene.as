package
{
   import §+$§.§[!a§;
   import §-!F§.§2[§;
   import §3<§.§-2§;
   import §3<§.§9&§;
   import §6x§.§9E§;
   import §7E§.§ =§;
   import §?l§.§`I§;
   import §[h§.§]! §;
   
   public class StateCutScene extends §2'§
   {
      
      public static const §[!1§:String = "StateCutScene";
      
      private static var §9!<§:Boolean = false;
       
      
      private var §,!6§:§`I§;
      
      private var §-!6§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §]l§(param1:Boolean) : void
      {
         §9!<§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §0!P§ = new §9E§(75,0,0,1);
         mUIView = new §-2§(this);
         mUIView.init(§9&§.§6!M§.Views.View_CutScene[0]);
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
         this.§-!6§ = false;
         if(!§9!<§)
         {
            mNextState = §"e§.§[!1§;
         }
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §]! §).§7q§("Start");
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §]! §).§4!V§ = true;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §]! §).setVisibility(true);
      }
      
      private function §`§() : String
      {
         var _loc1_:String = §2[§.§4!h§;
         var _loc2_:String = §2[§.§-!E§().§6f§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§2[§.§=@§)
         {
            _loc1_ = §2[§.§^N§;
            _loc2_ = §2[§.§-!E§().§6f§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         mUIView.getItemByName("Button_Skip").setVisibility(false);
         §9!<§ = false;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §]! §).§7q§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§-!6§ = true;
               mNextState = § try§.§[!1§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         mUIView.getItemByName("Button_Skip").setVisibility(true);
         if(this.§-!6§)
         {
            return § =§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § =§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§5!U§(mUIView.getItemByName("MovieClip_CutSceneHelmet") as §]! §,param1);
         if(mNextState.length > 0)
         {
            return § =§.STATE_STATUS_COMPLETED;
         }
         return § =§.STATE_STATUS_RUNNING;
      }
      
      private function §5!U§(param1:§]! §, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§4!V§ == true)
         {
            _loc3_ = param1.§&!§(param2);
            if(_loc3_ == "End")
            {
               param1.§4!V§ = false;
            }
         }
      }
   }
}
