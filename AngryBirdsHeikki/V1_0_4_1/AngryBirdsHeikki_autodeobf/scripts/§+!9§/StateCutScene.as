package §+!9§
{
   import § a§.§0]§;
   import §#!&§.§48§;
   import §,J§.§7!A§;
   import §4;§.§,h§;
   import §6!"§.§<!+§;
   import §7!X§.§%!=§;
   import §7!X§.§7g§;
   import §var§.§+!^§;
   
   public class StateCutScene extends §3!!§
   {
      
      public static const §6! §:String = "StateCutScene";
      
      private static var § I§:Boolean = false;
       
      
      private var §5!Z§:§0]§;
      
      private var §;!_§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function set §6K§(param1:Boolean) : void
      {
         § I§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §1'§ = new §<!+§(75,0,0,1);
         §2!M§ = new §7g§(this);
         §2!M§.init(§%!=§.§ #§.Views.View_CutScene[0]);
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
         §2!M§.getItemByName("Button_Tutorial").setVisibility(false);
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
         this.§;!_§ = false;
         if(!§ I§)
         {
            mNextState = § 4§.§6! §;
         }
         (§2!M§.getItemByName("MovieClip_CutSceneHelmet") as §48§).§0S§("Start");
         (§2!M§.getItemByName("MovieClip_CutSceneHelmet") as §48§).§2Z§ = true;
         (§2!M§.getItemByName("MovieClip_CutSceneHelmet") as §48§).setVisibility(true);
      }
      
      private function §6o§() : String
      {
         var _loc1_:String = §7!A§.§3C§;
         var _loc2_:String = §7!A§.§^s§().§]+§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§7!A§.§ ![§)
         {
            _loc1_ = §7!A§.§ !A§;
            _loc2_ = §7!A§.§^s§().§]+§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         §2!M§.getItemByName("Button_Skip").setVisibility(false);
         § I§ = false;
         (§2!M§.getItemByName("MovieClip_CutSceneHelmet") as §48§).§0S§("Start");
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SKIP":
               this.§;!_§ = true;
               mNextState = §%!+§.§6! §;
         }
      }
      
      override public function run(param1:Number) : int
      {
         §2!M§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§;!_§)
         {
            return §,h§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,h§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§!!@§(§2!M§.getItemByName("MovieClip_CutSceneHelmet") as §48§,param1);
         if(mNextState.length > 0)
         {
            return §,h§.STATE_STATUS_COMPLETED;
         }
         return §,h§.STATE_STATUS_RUNNING;
      }
      
      private function §!!@§(param1:§48§, param2:Number) : void
      {
         var _loc3_:String = null;
         if(param1.§2Z§ == true)
         {
            _loc3_ = param1.§&!H§(param2);
            if(_loc3_ == "End")
            {
               param1.§2Z§ = false;
            }
         }
      }
   }
}
