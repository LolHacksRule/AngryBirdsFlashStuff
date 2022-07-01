package §2x§
{
   import §-!+§.§6"6§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0!w§.§ 2§;
   import §0!w§.§2"8§;
   import §0s§.§8!z§;
   import §4!j§.§0p§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §`"2§.§&"5§;
   import §`"2§.§6!,§;
   import flash.events.Event;
   
   public class StateCutScene extends §>!T§
   {
      
      public static const §>H§:String = "StateCutScene";
      
      private static const §>"2§:Number = 500;
       
      
      private var §]!8§:§ 2§;
      
      private var §9^§:Boolean;
      
      private var §=K§:Number = 0;
      
      private var §`=§:Number = 0;
      
      private var §"R§:§&"5§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_CutScene[0]);
      }
      
      protected function §^"&§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§"R§)
            {
               §3?§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§"R§.removeEventListener(Event.COMPLETE,this.§"M§);
               this.§"R§.removeEventListener(Event.CANCEL,this.§46§);
               this.§"R§.addEventListener(Event.COMPLETE,this.§"M§);
               this.§"R§.addEventListener(Event.CANCEL,this.§46§);
               this.§"R§.§,"6§("cutscene_" + param1);
            }
            else
            {
               this.§8`§();
            }
            return true;
         }
         return false;
      }
      
      private function §"M§(param1:Event) : void
      {
         if(this.§"R§)
         {
            this.§"R§.removeEventListener(Event.COMPLETE,this.§"M§);
            this.§"R§.removeEventListener(Event.CANCEL,this.§46§);
            this.§8`§();
         }
      }
      
      private function §8`§() : void
      {
         §3?§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§7"&§();
         var _loc2_:§6!,§ = §6!,§.§7!?§;
         if(this.§"R§)
         {
            _loc2_ = this.§"R§.§4F§;
         }
         this.§]!8§ = §2"8§.§[z§(_loc1_,_loc2_);
         if(this.§]!8§)
         {
            AngryBirdsFP11.§"!c§.§`!Y§(_loc1_);
            §5!U§.§,!E§.§=""§(true);
            §5!U§.§,!E§.§3!w§(false);
            this.§]!8§.update(0);
            §5!U§.§,!E§.§`">§.addChild(this.§]!8§.sprite);
         }
      }
      
      protected function §46§(param1:Event) : void
      {
         if(this.§"R§)
         {
            this.§"R§.removeEventListener(Event.COMPLETE,this.§"M§);
            this.§"R§.removeEventListener(Event.CANCEL,this.§46§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§"R§)
         {
            this.§"R§ = §5!U§.§,!E§.§"!E§;
         }
         if(§6"6§.§^F§)
         {
            §6"6§.§^F§.color = 0;
         }
         this.§=K§ = 0;
         this.§`=§ = 0;
         §3?§.getItemByName("Button_Skip").setVisibility(false);
         §3?§.getItemByName("Button_Skip").mClip.alpha = this.§=K§;
         AngryBirdsFP11.§["9§();
         this.§9^§ = false;
         §3?§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§7"&§();
         if(!this.§^"&§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §7"&§() : String
      {
         var _loc1_:String = §8!z§.§ "7§;
         var _loc2_:String = §8!z§.§^!]§().§2c§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §8!z§.§>!&§;
            _loc2_ = §8!z§.§^!]§().§2c§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§]!8§)
         {
            §5!U§.§,!E§.§`">§.removeChild(this.§]!8§.sprite);
            this.§]!8§.dispose();
            this.§]!8§ = null;
         }
         if(this.§"R§)
         {
            this.§"R§.removeEventListener(Event.COMPLETE,this.§"M§);
            this.§"R§.removeEventListener(Event.CANCEL,this.§46§);
         }
         §5!U§.§,!E§.§3!w§(true);
         §8!z§.§ "7§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§9^§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§2p§.§`W§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§`=§ > §>"2§)
         {
            §3?§.getItemByName("Button_Skip").setVisibility(true);
            this.§=K§ += param1 / 1000;
            §3?§.getItemByName("Button_Skip").mClip.alpha = this.§=K§;
            if(this.§=K§ > 1)
            {
               this.§=K§ = 1;
            }
         }
         else
         {
            this.§`=§ += param1;
         }
         if(this.§9^§)
         {
            this.end();
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         if(this.§]!8§ && !this.§]!8§.update(param1))
         {
            this.end();
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§]!8§ && this.§]!8§.§!g§ == § 2§.§6!G§)
         {
            §8";§.§;!&§ = StateCutScene.§>H§;
            mNextState = §8";§.§>H§;
         }
         else if(this.§]!8§ && this.§]!8§.§!g§ == § 2§.§%u§)
         {
            mNextState = §^f§.§>H§;
         }
         else
         {
            _loc1_ = §8!z§.§>!&§;
            if(_loc1_)
            {
               mNextState = this.§>E§();
            }
            else
            {
               mNextState = §8";§.§>H§;
            }
         }
      }
      
      protected function §>E§() : String
      {
         return §8D§.§>H§;
      }
   }
}
