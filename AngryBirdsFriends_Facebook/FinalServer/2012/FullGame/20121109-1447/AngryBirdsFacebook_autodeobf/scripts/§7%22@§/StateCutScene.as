package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'6§.§"]§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §6!D§.§0Y§;
   import §6!D§.§;";§;
   import §]!A§.;
   import §`!]§.§3x§;
   import §`!]§.§="A§;
   import flash.events.Event;
   
   public class StateCutScene extends §1-§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §5!#§:Number = 500;
       
      
      private var §^!G§:§="A§;
      
      private var §=!U§:Boolean;
      
      private var §<c§:Number = 0;
      
      private var §-!V§:Number = 0;
      
      private var §%!o§:§;";§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_CutScene[0]);
      }
      
      protected function §?p§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§%!o§)
            {
               §6w§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§%!o§.removeEventListener(Event.COMPLETE,this.§>!y§);
               this.§%!o§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§%!o§.addEventListener(Event.COMPLETE,this.§>!y§);
               this.§%!o§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§%!o§.§!!_§("cutscene_" + param1);
            }
            else
            {
               this.§3"'§();
            }
            return true;
         }
         return false;
      }
      
      private function §>!y§(param1:Event) : void
      {
         if(this.§%!o§)
         {
            this.§%!o§.removeEventListener(Event.COMPLETE,this.§>!y§);
            this.§%!o§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.§3"'§();
         }
      }
      
      private function §3"'§() : void
      {
         §6w§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§`"5§();
         var _loc2_:§0Y§ = §0Y§.§;"§;
         if(this.§%!o§)
         {
            _loc2_ = this.§%!o§.textureManager;
         }
         this.§^!G§ = §3x§.§<!8§(_loc1_,_loc2_);
         if(this.§^!G§)
         {
            AngryBirdsFP11.sUserProgress.§14§(_loc1_);
            §#6§.§6!z§.§3H§(true);
            §#6§.§6!z§.§8Y§(false);
            this.§^!G§.update(0);
            §#6§.§6!z§.§8!_§.addChild(this.§^!G§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§%!o§)
         {
            this.§%!o§.removeEventListener(Event.COMPLETE,this.§>!y§);
            this.§%!o§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§%!o§)
         {
            this.§%!o§ = §#6§.§6!z§.§@F§;
         }
         if(§"]§.§!X§)
         {
            §"]§.§!X§.color = 0;
         }
         this.§<c§ = 0;
         this.§-!V§ = 0;
         §6w§.getItemByName("Button_Skip").setVisibility(false);
         §6w§.getItemByName("Button_Skip").mClip.alpha = this.§<c§;
         AngryBirdsFP11.§`!"§();
         this.§=!U§ = false;
         §6w§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§`"5§();
         if(!this.§?p§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §`"5§() : String
      {
         var _loc1_:String = LevelManager.§+!;§;
         var _loc2_:String = LevelManager.§9"D§().§<!5§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = LevelManager.§'!O§;
            _loc2_ = LevelManager.§9"D§().§<!5§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§^!G§)
         {
            §#6§.§6!z§.§8!_§.removeChild(this.§^!G§.sprite);
            this.§^!G§.dispose();
            this.§^!G§ = null;
         }
         if(this.§%!o§)
         {
            this.§%!o§.removeEventListener(Event.COMPLETE,this.§>!y§);
            this.§%!o§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §#6§.§6!z§.§8Y§(true);
         LevelManager.§+!;§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§=!U§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@<§.§'!+§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§-!V§ > §5!#§)
         {
            §6w§.getItemByName("Button_Skip").setVisibility(true);
            this.§<c§ += param1 / 1000;
            §6w§.getItemByName("Button_Skip").mClip.alpha = this.§<c§;
            if(this.§<c§ > 1)
            {
               this.§<c§ = 1;
            }
         }
         else
         {
            this.§-!V§ += param1;
         }
         if(this.§=!U§)
         {
            this.end();
            return §1-§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         if(this.§^!G§ && !this.§^!G§.update(param1))
         {
            this.end();
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§^!G§ && this.§^!G§.§]"+§ == §="A§.§6[§)
         {
            §8"D§.§5;§ = StateCutScene.STATE_NAME;
            mNextState = this.getLevelSelectionState();
         }
         else if(this.§^!G§ && this.§^!G§.§]"+§ == §="A§.§72§)
         {
            mNextState = §9<§.STATE_NAME;
         }
         else
         {
            _loc1_ = LevelManager.§'!O§;
            if(_loc1_)
            {
               mNextState = this.getLevelLoadState();
            }
            else
            {
               mNextState = this.getLevelSelectionState();
            }
         }
      }
      
      protected function getLevelSelectionState() : String
      {
         return §8"D§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §!!7§.STATE_NAME;
      }
   }
}
