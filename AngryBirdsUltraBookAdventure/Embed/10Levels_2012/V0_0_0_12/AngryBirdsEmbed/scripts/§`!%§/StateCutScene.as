package §`!%§
{
   import §"!5§.§,!!§;
   import §&p§.§'_§;
   import §'X§.§9[§;
   import §-!0§.§'!3§;
   import §-!0§.§2h§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §2!#§.§&§;
   import §2!#§.§9!5§;
   import §>!C§.§6M§;
   import §@s§.§'!0§;
   import flash.events.Event;
   
   public class StateCutScene extends §9[§
   {
      
      public static const §0!7§:String = "StateCutScene";
      
      private static const §4!1§:Number = 500;
       
      
      private var §[K§:§&§;
      
      private var dynamic:Boolean;
      
      private var § for§:Number = 0;
      
      private var §[S§:Number = 0;
      
      private var §?!0§:§2h§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#!4§ = new §!!1§(this);
         §#!4§.init(§0!&§.§'^§.Views.View_CutScene[0]);
      }
      
      protected function §]K§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§?!0§)
            {
               §#!4§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§?!0§.removeEventListener(Event.COMPLETE,this.§6I§);
               this.§?!0§.removeEventListener(Event.CANCEL,this.§1L§);
               this.§?!0§.addEventListener(Event.COMPLETE,this.§6I§);
               this.§?!0§.addEventListener(Event.CANCEL,this.§1L§);
               this.§?!0§.§ null§("cutscene_" + param1);
            }
            else
            {
               this.§if §();
            }
            return true;
         }
         return false;
      }
      
      private function §6I§(param1:Event) : void
      {
         if(this.§?!0§)
         {
            this.§?!0§.removeEventListener(Event.COMPLETE,this.§6I§);
            this.§?!0§.removeEventListener(Event.CANCEL,this.§1L§);
            this.§if §();
         }
      }
      
      private function §if §() : void
      {
         §#!4§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§57§();
         var _loc2_:§'!3§ = §'!3§.§-]§;
         if(this.§?!0§)
         {
            _loc2_ = this.§?!0§.textureManager;
         }
         this.§[K§ = §9!5§.§`&§(_loc1_,_loc2_);
         if(this.§[K§)
         {
            AngryBirdsFP11.sUserProgress.§1x§(_loc1_);
            §,!!§.§;4§.§69§(true);
            §,!!§.§;4§.§#O§(false);
            this.§[K§.update(0);
            §,!!§.§;4§.§7!8§.addChild(this.§[K§.sprite);
         }
      }
      
      protected function §1L§(param1:Event) : void
      {
         if(this.§?!0§)
         {
            this.§?!0§.removeEventListener(Event.COMPLETE,this.§6I§);
            this.§?!0§.removeEventListener(Event.CANCEL,this.§1L§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§?!0§)
         {
            this.§?!0§ = §,!!§.§;4§.§^k§;
         }
         if(§'_§.§17§)
         {
            §'_§.§17§.color = 0;
         }
         this.§ for§ = 0;
         this.§[S§ = 0;
         §#!4§.getItemByName("Button_Skip").setVisibility(false);
         §#!4§.getItemByName("Button_Skip").mClip.alpha = this.§ for§;
         AngryBirdsFP11.§-!?§();
         this.dynamic = false;
         §#!4§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§57§();
         if(!this.§]K§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §57§() : String
      {
         var _loc1_:String = §6M§.§>D§;
         var _loc2_:String = §6M§.§0!1§().§,"§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §6M§.§[z§;
            _loc2_ = §6M§.§0!1§().§,"§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§[K§)
         {
            §,!!§.§;4§.§7!8§.removeChild(this.§[K§.sprite);
            this.§[K§.dispose();
            this.§[K§ = null;
         }
         if(this.§?!0§)
         {
            this.§?!0§.removeEventListener(Event.COMPLETE,this.§6I§);
            this.§?!0§.removeEventListener(Event.CANCEL,this.§1L§);
         }
         §,!!§.§;4§.§#O§(true);
         §6M§.§>D§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.dynamic = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§[S§ > §4!1§)
         {
            §#!4§.getItemByName("Button_Skip").setVisibility(true);
            this.§ for§ += param1 / 1000;
            §#!4§.getItemByName("Button_Skip").mClip.alpha = this.§ for§;
            if(this.§ for§ > 1)
            {
               this.§ for§ = 1;
            }
         }
         else
         {
            this.§[S§ += param1;
         }
         if(this.dynamic)
         {
            this.end();
            return §9[§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §9[§.STATE_STATUS_COMPLETED;
         }
         if(this.§[K§ && !this.§[K§.update(param1))
         {
            this.end();
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§[K§ && this.§[K§.§>!+§ == §&§.§<!G§)
         {
            §!,§.§^B§ = StateCutScene.§0!7§;
            mNextState = §!,§.§0!7§;
         }
         else if(this.§[K§ && this.§[K§.§>!+§ == §&§.§#v§)
         {
            mNextState = §4N§.§0!7§;
         }
         else
         {
            _loc1_ = §6M§.§[z§;
            if(_loc1_)
            {
               mNextState = this.§,7§();
            }
            else
            {
               mNextState = §!,§.§0!7§;
            }
         }
      }
      
      protected function §,7§() : String
      {
         return § @§.§0!7§;
      }
   }
}
