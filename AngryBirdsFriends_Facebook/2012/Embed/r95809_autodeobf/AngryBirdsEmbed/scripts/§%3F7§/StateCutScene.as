package §?7§
{
   import §"V§.§true§;
   import §&I§.§3! §;
   import §,!§.§[O§;
   import §,!§.§]=§;
   import §-l§.§?'§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§6!9§;
   import §<!@§.§!P§;
   import §[!$§.§"!%§;
   import §[!$§.§;"§;
   import flash.events.Event;
   
   public class StateCutScene extends §true§
   {
      
      public static const §4!&§:String = "StateCutScene";
      
      private static const §,$§:Number = 500;
       
      
      private var §try§:§[O§;
      
      private var §50§:Boolean;
      
      private var §3!$§:Number = 0;
      
      private var §5+§:Number = 0;
      
      private var §@=§:§;"§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_CutScene[0]);
      }
      
      protected function §@g§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§@=§)
            {
               §6!$§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§@=§.removeEventListener(Event.COMPLETE,this.§`c§);
               this.§@=§.removeEventListener(Event.CANCEL,this.§]8§);
               this.§@=§.addEventListener(Event.COMPLETE,this.§`c§);
               this.§@=§.addEventListener(Event.CANCEL,this.§]8§);
               this.§@=§.§[!!§("cutscene_" + param1);
            }
            else
            {
               this.§,S§();
            }
            return true;
         }
         return false;
      }
      
      private function §`c§(param1:Event) : void
      {
         if(this.§@=§)
         {
            this.§@=§.removeEventListener(Event.COMPLETE,this.§`c§);
            this.§@=§.removeEventListener(Event.CANCEL,this.§]8§);
            this.§,S§();
         }
      }
      
      private function §,S§() : void
      {
         §6!$§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§""§();
         var _loc2_:§"!%§ = §"!%§.§^7§;
         if(this.§@=§)
         {
            _loc2_ = this.§@=§.textureManager;
         }
         this.§try§ = §]=§.§=w§(_loc1_,_loc2_);
         if(this.§try§)
         {
            AngryBirdsFP11.sUserProgress.§1§(_loc1_);
            §?'§.§5!§.§`!?§(true);
            §?'§.§5!§.§>G§(false);
            this.§try§.update(0);
            §?'§.§5!§.§6!8§.addChild(this.§try§.sprite);
         }
      }
      
      protected function §]8§(param1:Event) : void
      {
         if(this.§@=§)
         {
            this.§@=§.removeEventListener(Event.COMPLETE,this.§`c§);
            this.§@=§.removeEventListener(Event.CANCEL,this.§]8§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§@=§)
         {
            this.§@=§ = §?'§.§5!§.§"F§;
         }
         if(§3! §.§"n§)
         {
            §3! §.§"n§.color = 0;
         }
         this.§3!$§ = 0;
         this.§5+§ = 0;
         §6!$§.getItemByName("Button_Skip").setVisibility(false);
         §6!$§.getItemByName("Button_Skip").mClip.alpha = this.§3!$§;
         AngryBirdsFP11.§7!@§();
         this.§50§ = false;
         §6!$§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§""§();
         if(!this.§@g§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §""§() : String
      {
         var _loc1_:String = §!P§.§#!§;
         var _loc2_:String = §!P§.§^!@§().§&&§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §!P§.§4R§;
            _loc2_ = §!P§.§^!@§().§&&§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§try§)
         {
            §?'§.§5!§.§6!8§.removeChild(this.§try§.sprite);
            this.§try§.dispose();
            this.§try§ = null;
         }
         if(this.§@=§)
         {
            this.§@=§.removeEventListener(Event.COMPLETE,this.§`c§);
            this.§@=§.removeEventListener(Event.CANCEL,this.§]8§);
         }
         §?'§.§5!§.§>G§(true);
         §!P§.§#!§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§50§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ for§.§>§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§5+§ > §,$§)
         {
            §6!$§.getItemByName("Button_Skip").setVisibility(true);
            this.§3!$§ += param1 / 1000;
            §6!$§.getItemByName("Button_Skip").mClip.alpha = this.§3!$§;
            if(this.§3!$§ > 1)
            {
               this.§3!$§ = 1;
            }
         }
         else
         {
            this.§5+§ += param1;
         }
         if(this.§50§)
         {
            this.end();
            return §true§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §true§.STATE_STATUS_COMPLETED;
         }
         if(this.§try§ && !this.§try§.update(param1))
         {
            this.end();
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§try§ && this.§try§.§8'§ == §[O§.§9!#§)
         {
            §<!D§.§&!3§ = StateCutScene.§4!&§;
            mNextState = §<!D§.§4!&§;
         }
         else if(this.§try§ && this.§try§.§8'§ == §[O§.§@!G§)
         {
            mNextState = §%o§.§4!&§;
         }
         else
         {
            _loc1_ = §!P§.§4R§;
            if(_loc1_)
            {
               mNextState = this.§+!5§();
            }
            else
            {
               mNextState = §<!D§.§4!&§;
            }
         }
      }
      
      protected function §+!5§() : String
      {
         return §'!6§.§4!&§;
      }
   }
}
