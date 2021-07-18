package §%w§
{
   import § `§.§2w§;
   import § `§.§const§;
   import §&p§.§9!H§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§'n§;
   import §=!7§.§93§;
   import §=!7§.§[!C§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §]!F§.§7e§;
   import flash.events.Event;
   import flash.utils.setTimeout;
   
   public class StateCutScene extends §&c§
   {
      
      public static const §9!P§:String = "StateCutScene";
      
      private static const §3B§:Number = 2000;
       
      
      private var §]!9§:§93§;
      
      private var §&3§:Boolean;
      
      private var §@I§:§const§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3t§ = new §'j§(this);
         §3t§.init(§0p§.§'! §.Views.View_CutScene[0]);
      }
      
      protected function §6r§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§@I§)
            {
               this.§@I§.removeEventListener(Event.COMPLETE,this.§+=§);
               this.§@I§.removeEventListener(Event.CANCEL,this.override);
               this.§@I§.addEventListener(Event.COMPLETE,this.§+=§);
               this.§@I§.addEventListener(Event.CANCEL,this.override);
               this.§@I§.§>=§("cutscene_" + param1);
            }
            else
            {
               this.§,!;§();
            }
            return true;
         }
         return false;
      }
      
      private function §+=§(param1:Event) : void
      {
         if(this.§@I§)
         {
            this.§@I§.removeEventListener(Event.COMPLETE,this.§+=§);
            this.§@I§.removeEventListener(Event.CANCEL,this.override);
            this.§,!;§();
         }
      }
      
      private function §,!;§() : void
      {
         var _loc1_:String = this.§=!B§();
         var _loc2_:§2w§ = §2w§.§%!O§;
         if(this.§@I§)
         {
            _loc2_ = this.§@I§.§=]§;
         }
         this.§]!9§ = §[!C§.§,!!§(_loc1_,_loc2_);
         if(this.§]!9§)
         {
            §#x§.§[Y§.§>!'§(_loc1_);
            §7?§.§4!H§.§'![§(true);
            §7?§.§4!H§.§@^§(false);
            this.§]!9§.update(0);
            §7?§.§4!H§.§#!Z§.addChild(this.§]!9§.sprite);
         }
      }
      
      private function override(param1:Event) : void
      {
         if(this.§@I§)
         {
            this.§@I§.removeEventListener(Event.COMPLETE,this.§+=§);
            this.§@I§.removeEventListener(Event.CANCEL,this.override);
            mNextState = §[!X§.§9!P§;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§@I§)
         {
            this.§@I§ = §7?§.§4!H§.§9m§;
         }
         §3t§.getItemByName("Button_Skip").setVisibility(false);
         §#x§.§<!K§();
         this.§&3§ = false;
         var _loc1_:String = this.§=!B§();
         if(!this.§6r§(_loc1_))
         {
            mNextState = §[!X§.§9!P§;
         }
         else if(_loc1_ == "comp1_complete")
         {
            this.§]!9§.§]!A§ = §93§.§,,§;
         }
      }
      
      private function §=!B§() : String
      {
         var _loc1_:String = §7e§.§<=§;
         var _loc2_:String = §7e§.§[!?§().§9[§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§7e§.§-!F§)
         {
            _loc1_ = §7e§.§^"§;
            _loc2_ = §7e§.§[!?§().§9[§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§]!9§)
         {
            §7?§.§4!H§.§#!Z§.removeChild(this.§]!9§.sprite);
            this.§]!9§.dispose();
            this.§]!9§ = null;
         }
         if(this.§@I§)
         {
            this.§@I§.removeEventListener(Event.COMPLETE,this.§+=§);
            this.§@I§.removeEventListener(Event.CANCEL,this.override);
         }
         §7?§.§4!H§.§@^§(true);
         §7e§.§<=§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§&3§ = true;
               break;
            case "FULLSCREEN_BUTTON":
         }
      }
      
      override public function run(param1:Number) : int
      {
         §3t§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§&3§)
         {
            this.end();
            return §&c§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §&c§.STATE_STATUS_COMPLETED;
         }
         if(!this.§]!9§.update(param1))
         {
            mNextState = §[!X§.§9!P§;
         }
         if(this.§]!9§ && !this.§]!9§.update(param1))
         {
            this.end();
         }
         return §&c§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:uint = 0;
         if(this.§]!9§ && §9!H§.credits <= 0)
         {
            _loc1_ = setTimeout(§;s§.sCheetosPopups.showPopup,400,§0!U§.NO_CREDIT,"NO_CREDIT");
            mNextState = §`L§.§9!P§;
         }
         else if(this.§]!9§ && this.§]!9§.§]!A§ == §93§.§6!N§)
         {
            mNextState = §`L§.§9!P§;
         }
         else if(this.§]!9§ && this.§]!9§.§]!A§ == §93§.§,,§)
         {
            mNextState = §,%§.§9!P§;
         }
         else
         {
            mNextState = §[!X§.§9!P§;
         }
      }
   }
}
