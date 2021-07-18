package §^U§
{
   import §%!j§.§%K§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §;"7§.§1!O§;
   import §;"7§.§="<§;
   import §;<§.§'B§;
   import §<i§.§`!r§;
   import §@y§.§0=§;
   import §`",§.§2M§;
   import §`",§.§37§;
   import flash.events.Event;
   
   public class StateCutScene extends §'B§
   {
      
      public static const §%!Q§:String = "StateCutScene";
      
      private static const §9"&§:Number = 500;
       
      
      private var §2w§:§37§;
      
      private var §3!5§:Boolean;
      
      private var §]b§:Number = 0;
      
      private var §3!y§:Number = 0;
      
      private var §#'§:§1!O§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_CutScene[0]);
      }
      
      protected function §"!t§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§#'§)
            {
               §`!v§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§#'§.removeEventListener(Event.COMPLETE,this.§3"7§);
               this.§#'§.removeEventListener(Event.CANCEL,this.§6y§);
               this.§#'§.addEventListener(Event.COMPLETE,this.§3"7§);
               this.§#'§.addEventListener(Event.CANCEL,this.§6y§);
               this.§#'§.§?2§("cutscene_" + param1);
            }
            else
            {
               this.§]!Q§();
            }
            return true;
         }
         return false;
      }
      
      private function §3"7§(param1:Event) : void
      {
         if(this.§#'§)
         {
            this.§#'§.removeEventListener(Event.COMPLETE,this.§3"7§);
            this.§#'§.removeEventListener(Event.CANCEL,this.§6y§);
            this.§]!Q§();
         }
      }
      
      private function §]!Q§() : void
      {
         §`!v§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§`!<§();
         var _loc2_:§="<§ = §="<§.§[E§;
         if(this.§#'§)
         {
            _loc2_ = this.§#'§.§8=§;
         }
         this.§2w§ = §2M§.§1!I§(_loc1_,_loc2_);
         if(this.§2w§)
         {
            AngryBirdsFP11.§>!7§.§@"'§(_loc1_);
            §'_§.§=M§.§'"@§(true);
            §'_§.§=M§.§"!X§(false);
            this.§2w§.update(0);
            §'_§.§=M§.§>@§.addChild(this.§2w§.sprite);
         }
      }
      
      protected function §6y§(param1:Event) : void
      {
         if(this.§#'§)
         {
            this.§#'§.removeEventListener(Event.COMPLETE,this.§3"7§);
            this.§#'§.removeEventListener(Event.CANCEL,this.§6y§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§#'§)
         {
            this.§#'§ = §'_§.§=M§.§?i§;
         }
         if(§%K§.§`9§)
         {
            §%K§.§`9§.color = 0;
         }
         this.§]b§ = 0;
         this.§3!y§ = 0;
         §`!v§.getItemByName("Button_Skip").setVisibility(false);
         §`!v§.getItemByName("Button_Skip").mClip.alpha = this.§]b§;
         AngryBirdsFP11.§4"2§();
         this.§3!5§ = false;
         §`!v§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§`!<§();
         if(!this.§"!t§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §`!<§() : String
      {
         var _loc1_:String = §`!r§.§;!8§;
         var _loc2_:String = §`!r§.§%"8§().§#!F§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §`!r§.§0B§;
            _loc2_ = §`!r§.§%"8§().§#!F§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§2w§)
         {
            §'_§.§=M§.§>@§.removeChild(this.§2w§.sprite);
            this.§2w§.dispose();
            this.§2w§ = null;
         }
         if(this.§#'§)
         {
            this.§#'§.removeEventListener(Event.COMPLETE,this.§3"7§);
            this.§#'§.removeEventListener(Event.CANCEL,this.§6y§);
         }
         §'_§.§=M§.§"!X§(true);
         §`!r§.§;!8§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§3!5§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@"7§.§>!5§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§3!y§ > §9"&§)
         {
            §`!v§.getItemByName("Button_Skip").setVisibility(true);
            this.§]b§ += param1 / 1000;
            §`!v§.getItemByName("Button_Skip").mClip.alpha = this.§]b§;
            if(this.§]b§ > 1)
            {
               this.§]b§ = 1;
            }
         }
         else
         {
            this.§3!y§ += param1;
         }
         if(this.§3!5§)
         {
            this.end();
            return §'B§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         if(this.§2w§ && !this.§2w§.update(param1))
         {
            this.end();
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§2w§ && this.§2w§.§6! § == §37§.§ !#§)
         {
            §1!i§.§&t§ = StateCutScene.§%!Q§;
            mNextState = this.§>!9§();
         }
         else if(this.§2w§ && this.§2w§.§6! § == §37§.§"!a§)
         {
            mNextState = §<K§.§%!Q§;
         }
         else
         {
            _loc1_ = §`!r§.§0B§;
            if(_loc1_)
            {
               mNextState = this.§"!0§();
            }
            else
            {
               mNextState = this.§>!9§();
            }
         }
      }
      
      protected function §>!9§() : String
      {
         return §1!i§.§%!Q§;
      }
      
      protected function §"!0§() : String
      {
         return §`!;§.§%!Q§;
      }
   }
}
