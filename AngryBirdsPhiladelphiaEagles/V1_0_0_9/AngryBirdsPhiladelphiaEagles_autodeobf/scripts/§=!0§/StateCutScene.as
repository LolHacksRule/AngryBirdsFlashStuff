package §=!0§
{
   import §'!3§.§&!H§;
   import §1a§.§"v§;
   import §1a§.§^h§;
   import §5F§.§+!O§;
   import §6!L§.§&u§;
   import §<A§.§'K§;
   import §<A§.§8t§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §^w§.§-!,§;
   import flash.events.Event;
   
   public class StateCutScene extends §-!,§
   {
      
      public static const §@§:String = "StateCutScene";
      
      private static const §8^§:Number = 500;
       
      
      private var §7!B§:§^h§;
      
      private var §11§:Boolean;
      
      private var §+!B§:Number = 0;
      
      private var §1!3§:Number = 0;
      
      private var §?w§:§8t§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_CutScene[0]);
      }
      
      protected function §<!I§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§?w§)
            {
               §;I§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§?w§.removeEventListener(Event.COMPLETE,this.§1f§);
               this.§?w§.removeEventListener(Event.CANCEL,this.§^!2§);
               this.§?w§.addEventListener(Event.COMPLETE,this.§1f§);
               this.§?w§.addEventListener(Event.CANCEL,this.§^!2§);
               this.§?w§.§!!5§("cutscene_" + param1);
            }
            else
            {
               this.§ !%§();
            }
            return true;
         }
         return false;
      }
      
      private function §1f§(param1:Event) : void
      {
         if(this.§?w§)
         {
            this.§?w§.removeEventListener(Event.COMPLETE,this.§1f§);
            this.§?w§.removeEventListener(Event.CANCEL,this.§^!2§);
            this.§ !%§();
         }
      }
      
      private function § !%§() : void
      {
         §;I§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§14§();
         var _loc2_:§'K§ = §'K§.§@!&§;
         if(this.§?w§)
         {
            _loc2_ = this.§?w§.textureManager;
         }
         this.§7!B§ = §"v§.§>V§(_loc1_,_loc2_);
         if(this.§7!B§)
         {
            AngryBirdsFP11.§5@§.§^q§(_loc1_);
            §0!E§.§9!B§.§5!3§(true);
            §0!E§.§9!B§.§7U§(false);
            this.§7!B§.update(0);
            §0!E§.§9!B§.§?N§.addChild(this.§7!B§.sprite);
         }
      }
      
      protected function §^!2§(param1:Event) : void
      {
         if(this.§?w§)
         {
            this.§?w§.removeEventListener(Event.COMPLETE,this.§1f§);
            this.§?w§.removeEventListener(Event.CANCEL,this.§^!2§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§?w§)
         {
            this.§?w§ = §0!E§.§9!B§.§3H§;
         }
         if(§&!H§.§+!H§)
         {
            §&!H§.§+!H§.color = 0;
         }
         this.§+!B§ = 0;
         this.§1!3§ = 0;
         §;I§.getItemByName("Button_Skip").setVisibility(false);
         §;I§.getItemByName("Button_Skip").mClip.alpha = this.§+!B§;
         AngryBirdsFP11.§case§();
         this.§11§ = false;
         §;I§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§14§();
         if(!this.§<!I§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §14§() : String
      {
         var _loc1_:String = §&u§.§'<§;
         var _loc2_:String = §&u§.§3c§().§&!4§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §&u§.§ !+§;
            _loc2_ = §&u§.§3c§().§&!4§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§7!B§)
         {
            §0!E§.§9!B§.§?N§.removeChild(this.§7!B§.sprite);
            this.§7!B§.dispose();
            this.§7!B§ = null;
         }
         if(this.§?w§)
         {
            this.§?w§.removeEventListener(Event.COMPLETE,this.§1f§);
            this.§?w§.removeEventListener(Event.CANCEL,this.§^!2§);
         }
         §0!E§.§9!B§.§7U§(true);
         §&u§.§'<§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§11§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§;!@§.§8N§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§1!3§ > §8^§)
         {
            §;I§.getItemByName("Button_Skip").setVisibility(true);
            this.§+!B§ += param1 / 1000;
            §;I§.getItemByName("Button_Skip").mClip.alpha = this.§+!B§;
            if(this.§+!B§ > 1)
            {
               this.§+!B§ = 1;
            }
         }
         else
         {
            this.§1!3§ += param1;
         }
         if(this.§11§)
         {
            this.end();
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         if(this.§7!B§ && !this.§7!B§.update(param1))
         {
            this.end();
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§7!B§ && this.§7!B§.§]!2§ == §^h§.§9_§)
         {
            §?!G§.§=0§ = StateCutScene.§@§;
            mNextState = §?!G§.§@§;
         }
         else if(this.§7!B§ && this.§7!B§.§]!2§ == §^h§.§8z§)
         {
            mNextState = §9!D§.§@§;
         }
         else
         {
            _loc1_ = §&u§.§ !+§;
            if(_loc1_)
            {
               mNextState = this.§8U§();
            }
            else
            {
               mNextState = §?!G§.§@§;
            }
         }
      }
      
      protected function §8U§() : String
      {
         return §1!F§.§@§;
      }
   }
}
