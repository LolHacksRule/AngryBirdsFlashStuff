package §`@§
{
   import §"!5§.§,!!§;
   import §&p§.§'_§;
   import §0!§.§0!5§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §1h§.§@s§;
   import §<h§.§4-§;
   import §<h§.§;@§;
   import §>!C§.§6M§;
   import §[!<§.§,c§;
   import §[!<§.§2!#§;
   import flash.events.Event;
   
   public class StateCutScene extends §0!5§
   {
      
      public static const §0!7§:String = "StateCutScene";
      
      private static const §4!1§:Number = 500;
       
      
      private var §[K§:§,c§;
      
      private var dynamic:Boolean;
      
      private var § for§:Number = 0;
      
      private var §[S§:Number = 0;
      
      private var §?!0§:§4-§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#Z§ = new §!!1§(this);
         §#Z§.init(§0!&§.§'^§.Views.View_CutScene[0]);
      }
      
      protected function §]K§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§?!0§)
            {
               §#Z§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§?!0§.removeEventListener(Event.COMPLETE,this.§6I§);
               this.§?!0§.removeEventListener(Event.CANCEL,this.§1L§);
               this.§?!0§.addEventListener(Event.COMPLETE,this.§6I§);
               this.§?!0§.addEventListener(Event.CANCEL,this.§1L§);
               this.§?!0§.§ !2§("cutscene_" + param1);
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
         §#Z§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§57§();
         var _loc2_:§;@§ = §;@§.§-]§;
         if(this.§?!0§)
         {
            _loc2_ = this.§?!0§.textureManager;
         }
         this.§[K§ = §2!#§.§7J§(_loc1_,_loc2_);
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
         §#Z§.getItemByName("Button_Skip").setVisibility(false);
         §#Z§.getItemByName("Button_Skip").mClip.alpha = this.§ for§;
         AngryBirdsFP11.§-!?§();
         this.dynamic = false;
         §#Z§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§57§();
         if(!this.§]K§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §57§() : String
      {
         var _loc1_:String = §6M§.§>D§;
         var _loc2_:String = §6M§.§&!;§().§]!3§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §6M§.§[z§;
            _loc2_ = §6M§.§&!;§().§]!3§(_loc1_ + "-INTRO");
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
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
            §#Z§.getItemByName("Button_Skip").setVisibility(true);
            this.§ for§ += param1 / 1000;
            §#Z§.getItemByName("Button_Skip").mClip.alpha = this.§ for§;
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
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         if(this.§[K§ && !this.§[K§.update(param1))
         {
            this.end();
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§[K§ && this.§[K§.§4e§ == §,c§.§[Z§)
         {
            §!,§.§^B§ = StateCutScene.§0!7§;
            mNextState = §!,§.§0!7§;
         }
         else if(this.§[K§ && this.§[K§.§4e§ == §,c§.§<!G§)
         {
            mNextState = §4N§.§0!7§;
         }
         else
         {
            _loc1_ = §6M§.§[z§;
            if(_loc1_)
            {
               mNextState = this.§^J§();
            }
            else
            {
               mNextState = §!,§.§0!7§;
            }
         }
      }
      
      protected function §^J§() : String
      {
         return § @§.§0!7§;
      }
   }
}
