package §9!5§
{
   import §-w§.§,Q§;
   import §-w§.§6!O§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §<&§.§^b§;
   import §`!i§.§,S§;
   import §`!i§.§6n§;
   import flash.events.Event;
   import §true§.§ _§;
   
   public class StateCutScene extends §?Y§
   {
      
      public static const §?h§:String = "StateCutScene";
      
      private static const §?!A§:Number = 500;
       
      
      private var §56§:§,S§;
      
      private var §+x§:Boolean;
      
      private var §9$§:Number = 0;
      
      private var §6!w§:Number = 0;
      
      private var §]!>§:§6!O§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_CutScene[0]);
      }
      
      protected function § !j§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§]!>§)
            {
               §5!P§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§]!>§.removeEventListener(Event.COMPLETE,this.§?!f§);
               this.§]!>§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§]!>§.addEventListener(Event.COMPLETE,this.§?!f§);
               this.§]!>§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§]!>§.§<!I§("cutscene_" + param1);
            }
            else
            {
               this.§"!Q§();
            }
            return true;
         }
         return false;
      }
      
      private function §?!f§(param1:Event) : void
      {
         if(this.§]!>§)
         {
            this.§]!>§.removeEventListener(Event.COMPLETE,this.§?!f§);
            this.§]!>§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.§"!Q§();
         }
      }
      
      private function §"!Q§() : void
      {
         §5!P§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§5j§();
         var _loc2_:§,Q§ = §,Q§.§<d§;
         if(this.§]!>§)
         {
            _loc2_ = this.§]!>§.textureManager;
         }
         this.§56§ = §6n§.§%T§(_loc1_,_loc2_);
         if(this.§56§)
         {
            AngryBirdsFP11.sUserProgress.§8!7§(_loc1_);
            § _§.§!6§.§2!d§(true);
            § _§.§!6§.§"C§(false);
            this.§56§.update(0);
            § _§.§!6§.§2i§.addChild(this.§56§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§]!>§)
         {
            this.§]!>§.removeEventListener(Event.COMPLETE,this.§?!f§);
            this.§]!>§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§]!>§)
         {
            this.§]!>§ = § _§.§!6§.§8!,§;
         }
         if(§^b§.§9E§)
         {
            §^b§.§9E§.color = 0;
         }
         this.§9$§ = 0;
         this.§6!w§ = 0;
         §5!P§.getItemByName("Button_Skip").setVisibility(false);
         §5!P§.getItemByName("Button_Skip").mClip.alpha = this.§9$§;
         AngryBirdsFP11.§,!p§();
         this.§+x§ = false;
         §5!P§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§5j§();
         if(!this.§ !j§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §5j§() : String
      {
         var _loc1_:String = LevelManager.§,C§;
         var _loc2_:String = LevelManager.§0v§().§['§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = LevelManager.§4Y§;
            _loc2_ = LevelManager.§0v§().§['§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§56§)
         {
            § _§.§!6§.§2i§.removeChild(this.§56§.sprite);
            this.§56§.dispose();
            this.§56§ = null;
         }
         if(this.§]!>§)
         {
            this.§]!>§.removeEventListener(Event.COMPLETE,this.§?!f§);
            this.§]!>§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         § _§.§!6§.§"C§(true);
         LevelManager.§,C§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§+x§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3!a§.§8!d§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§6!w§ > §?!A§)
         {
            §5!P§.getItemByName("Button_Skip").setVisibility(true);
            this.§9$§ += param1 / 1000;
            §5!P§.getItemByName("Button_Skip").mClip.alpha = this.§9$§;
            if(this.§9$§ > 1)
            {
               this.§9$§ = 1;
            }
         }
         else
         {
            this.§6!w§ += param1;
         }
         if(this.§+x§)
         {
            this.end();
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         if(this.§56§ && !this.§56§.update(param1))
         {
            this.end();
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§56§ && this.§56§.§+!'§ == §,S§.§+!Z§)
         {
            § B§.§`]§ = StateCutScene.§?h§;
            mNextState = § B§.§?h§;
         }
         else if(this.§56§ && this.§56§.§+!'§ == §,S§.§,-§)
         {
            mNextState = §!1§.§?h§;
         }
         else
         {
            _loc1_ = LevelManager.§4Y§;
            if(_loc1_)
            {
               mNextState = this.§[!Z§();
            }
            else
            {
               mNextState = § B§.§?h§;
            }
         }
      }
      
      protected function §[!Z§() : String
      {
         return §#!c§.§?h§;
      }
   }
}
