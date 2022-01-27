package §>Y§
{
   import §"^§.§9=§;
   import §+f§.§2!C§;
   import §+f§.§4!8§;
   import §3!%§.§-k§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§]_§;
   import §>w§.;
   import §?!=§.§<!>§;
   import §?6§.§'!K§;
   import §?6§.§;z§;
   import flash.events.Event;
   
   public class StateCutScene extends §<!>§
   {
      
      public static const §4!C§:String = "StateCutScene";
      
      private static const §`!D§:Number = 500;
       
      
      private var §]a§:§;z§;
      
      private var §]!J§:Boolean;
      
      private var §-!I§:Number = 0;
      
      private var §=a§:Number = 0;
      
      private var §&!5§:§2!C§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_CutScene[0]);
      }
      
      protected function §]C§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§&!5§)
            {
               §3g§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§&!5§.removeEventListener(Event.COMPLETE,this.§3!8§);
               this.§&!5§.removeEventListener(Event.CANCEL,this.§-!%§);
               this.§&!5§.addEventListener(Event.COMPLETE,this.§3!8§);
               this.§&!5§.addEventListener(Event.CANCEL,this.§-!%§);
               this.§&!5§.§6e§("cutscene_" + param1);
            }
            else
            {
               this.§0=§();
            }
            return true;
         }
         return false;
      }
      
      private function §3!8§(param1:Event) : void
      {
         if(this.§&!5§)
         {
            this.§&!5§.removeEventListener(Event.COMPLETE,this.§3!8§);
            this.§&!5§.removeEventListener(Event.CANCEL,this.§-!%§);
            this.§0=§();
         }
      }
      
      private function §0=§() : void
      {
         §3g§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§0B§();
         var _loc2_:§4!8§ = §4!8§.§ set§;
         if(this.§&!5§)
         {
            _loc2_ = this.§&!5§.textureManager;
         }
         this.§]a§ = §'!K§.§1!9§(_loc1_,_loc2_);
         if(this.§]a§)
         {
            AngryBirdsFP11.§3!?§.§@!0§(_loc1_);
            §9=§.§<!@§.§2k§(true);
            §9=§.§<!@§.§]! §(false);
            this.§]a§.update(0);
            §9=§.§<!@§.§#7§.addChild(this.§]a§.sprite);
         }
      }
      
      protected function §-!%§(param1:Event) : void
      {
         if(this.§&!5§)
         {
            this.§&!5§.removeEventListener(Event.COMPLETE,this.§3!8§);
            this.§&!5§.removeEventListener(Event.CANCEL,this.§-!%§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§&!5§)
         {
            this.§&!5§ = §9=§.§<!@§.§38§;
         }
         if(§#0§.§#4§)
         {
            §#0§.§#4§.color = 0;
         }
         this.§-!I§ = 0;
         this.§=a§ = 0;
         §3g§.getItemByName("Button_Skip").setVisibility(false);
         §3g§.getItemByName("Button_Skip").mClip.alpha = this.§-!I§;
         AngryBirdsFP11.§!;§();
         this.§]!J§ = false;
         §3g§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§0B§();
         if(!this.§]C§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §0B§() : String
      {
         var _loc1_:String = §-k§.§5!0§;
         var _loc2_:String = §-k§.§0!1§().§[x§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §-k§.§%D§;
            _loc2_ = §-k§.§0!1§().§[x§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§]a§)
         {
            §9=§.§<!@§.§#7§.removeChild(this.§]a§.sprite);
            this.§]a§.dispose();
            this.§]a§ = null;
         }
         if(this.§&!5§)
         {
            this.§&!5§.removeEventListener(Event.COMPLETE,this.§3!8§);
            this.§&!5§.removeEventListener(Event.CANCEL,this.§-!%§);
         }
         §9=§.§<!@§.§]! §(true);
         §-k§.§5!0§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§]!J§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ j§.§@[§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§=a§ > §`!D§)
         {
            §3g§.getItemByName("Button_Skip").setVisibility(true);
            this.§-!I§ += param1 / 1000;
            §3g§.getItemByName("Button_Skip").mClip.alpha = this.§-!I§;
            if(this.§-!I§ > 1)
            {
               this.§-!I§ = 1;
            }
         }
         else
         {
            this.§=a§ += param1;
         }
         if(this.§]!J§)
         {
            this.end();
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         if(this.§]a§ && !this.§]a§.update(param1))
         {
            this.end();
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§]a§ && this.§]a§.§2Q§ == §;z§.§"A§)
         {
            §8!F§.§7i§ = StateCutScene.§4!C§;
            mNextState = §8!F§.§4!C§;
         }
         else if(this.§]a§ && this.§]a§.§2Q§ == §;z§.§]W§)
         {
            mNextState = §6[§.§4!C§;
         }
         else
         {
            _loc1_ = §-k§.§%D§;
            if(_loc1_)
            {
               mNextState = this.§8!!§();
            }
            else
            {
               mNextState = §8!F§.§4!C§;
            }
         }
      }
      
      protected function §8!!§() : String
      {
         return §;O§.§4!C§;
      }
   }
}
