package §5!W§
{
   import §,!C§.§!!]§;
   import §,!H§.§ for§;
   import §,4§.§;_§;
   import §-a§.§5C§;
   import §7p§.§%g§;
   import §7p§.§>!m§;
   import §8%§.§3!X§;
   import §@-§.§[y§;
   
   public class StateCutScene extends §`X§
   {
      
      public static const §>d§:String = "StateCutScene";
      
      private static var §@j§:Boolean = false;
       
      
      private var §&!D§:§3!X§;
      
      private var §;!o§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §+![§(param1:Boolean) : void
      {
         §@j§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §#5§ = new §5C§(75,0,0,1);
         mUIView = new §%g§(this);
         mUIView.init(§>!m§.§9c§.Views.View_CutScene[0]);
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
         this.§;!o§ = false;
         if(!§@j§)
         {
            mNextState = §[Z§.§>d§;
         }
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §!!]§).§+^§("Start");
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §!!]§).§&!H§ = true;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §!!]§).setVisibility(true);
      }
      
      private function §]P§() : String
      {
         var _loc1_:String = §;_§.§each §;
         var _loc2_:String = §;_§.§9!Z§().§=w§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§;_§.§#!e§)
         {
            _loc1_ = §;_§.§2!Q§;
            _loc2_ = §;_§.§9!Z§().§=w§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         mUIView.getItemByName("Button_Skip").setVisibility(false);
         §@j§ = false;
         (mUIView.getItemByName("MovieClip_CutSceneHelmet") as §!!]§).§+^§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§;!o§ = true;
               mNextState = §,!B§.§>d§;
         }
      }
      
      override public function run(param1:Number) : int
      {
         mUIView.getItemByName("Button_Skip").setVisibility(true);
         if(this.§;!o§)
         {
            return § for§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § for§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§4c§(mUIView.getItemByName("MovieClip_CutSceneHelmet") as §!!]§,param1);
         if(mNextState.length > 0)
         {
            return § for§.STATE_STATUS_COMPLETED;
         }
         return § for§.STATE_STATUS_RUNNING;
      }
      
      private function §4c§(param1:§!!]§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§&!H§ == true)
         {
            _loc3_ = param1.§1!N§(param2);
            if(_loc3_ == "End")
            {
               param1.§&!H§ = false;
            }
         }
      }
   }
}
