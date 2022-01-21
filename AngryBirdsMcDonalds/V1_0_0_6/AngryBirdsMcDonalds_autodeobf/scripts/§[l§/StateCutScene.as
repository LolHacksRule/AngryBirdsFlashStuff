package §[l§
{
   import § d§.§8!_§;
   import §'d§.§8!]§;
   import §0;§.§3=§;
   import §0;§.§`!`§;
   import §31§.§@^§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §7_§.§^d§;
   
   public class StateCutScene extends §,Q§
   {
      
      public static const §!_§:String = "StateCutScene";
      
      private static var §`!U§:Boolean = false;
       
      
      private var §=!,§:§8!_§;
      
      private var §#!c§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §7!A§(param1:Boolean) : void
      {
         §`!U§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §6K§ = new §8!]§(75,0,0,1);
         mUIView = new §3=§(this);
         mUIView.init(§`!`§.§2=§.Views.View_CutScene[0]);
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
         this.§#!c§ = false;
         if(!§`!U§)
         {
            mNextState = §26§.§!_§;
         }
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §@^§).§%=§("Start");
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §@^§).§9! § = true;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §@^§).setVisibility(true);
      }
      
      private function §6!N§() : String
      {
         var _loc1_:String = §^d§.§6§;
         var _loc2_:String = §^d§.§@3§().§#!@§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§^d§.§`>§)
         {
            _loc1_ = §^d§.§@P§;
            _loc2_ = §^d§.§@3§().§#!@§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         mUIView.getItemByName("Button_Skip").setVisibility(false);
         §`!U§ = false;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §@^§).§%=§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§#!c§ = true;
               mNextState = § A§.§!_§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         mUIView.getItemByName("Button_Skip").setVisibility(true);
         if(this.§#!c§)
         {
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!b§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§,j§(mUIView.getItemByName("MovieClip_CutSceneHelmet") as §@^§,param1);
         if(mNextState.length > 0)
         {
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         return §1!b§.STATE_STATUS_RUNNING;
      }
      
      private function §,j§(param1:§@^§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§9! § == true)
         {
            _loc3_ = param1.§1J§(param2);
            if(_loc3_ == "End")
            {
               param1.§9! § = false;
            }
         }
      }
   }
}
