package §<!U§
{
   import §!J§.§[&§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§8!I§;
   import §3o§.§;!=§;
   import §4W§.§!]§;
   import §4W§.§9@§;
   import §8a§.§7!$§;
   import §8a§.§[!7§;
   import §<!+§.§[!!§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.events.Event;
   import flash.utils.setTimeout;
   
   public class StateCutScene extends §[4§
   {
      
      public static const §`O§:String = "StateCutScene";
      
      private static const §<!T§:Number = 2000;
       
      
      private var §?!C§:§7!$§;
      
      private var §<!!§:Boolean;
      
      private var §@S§:§9@§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §,!N§(this);
         §"c§.init(§@]§.§3!6§.Views.View_CutScene[0]);
      }
      
      protected function §'s§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§@S§)
            {
               this.§@S§.removeEventListener(Event.COMPLETE,this.§-^§);
               this.§@S§.removeEventListener(Event.CANCEL,this.§>=§);
               this.§@S§.addEventListener(Event.COMPLETE,this.§-^§);
               this.§@S§.addEventListener(Event.CANCEL,this.§>=§);
               this.§@S§.§9=§("cutscene_" + param1);
            }
            else
            {
               this.§[!§();
            }
            return true;
         }
         return false;
      }
      
      private function §-^§(param1:Event) : void
      {
         if(this.§@S§)
         {
            this.§@S§.removeEventListener(Event.COMPLETE,this.§-^§);
            this.§@S§.removeEventListener(Event.CANCEL,this.§>=§);
            this.§[!§();
         }
      }
      
      private function §[!§() : void
      {
         var _loc1_:String = this.§`!U§();
         var _loc2_:§!]§ = §!]§.§!!L§;
         if(this.§@S§)
         {
            _loc2_ = this.§@S§.§#G§;
         }
         this.§?!C§ = §[!7§.§]Q§(_loc1_,_loc2_);
         if(this.§?!C§)
         {
            §,l§.§3!,§.§4y§(_loc1_);
            §[&§.§&!'§.§>!D§(true);
            §[&§.§&!'§.§"C§(false);
            this.§?!C§.update(0);
            §[&§.§&!'§.§['§.addChild(this.§?!C§.sprite);
         }
      }
      
      private function §>=§(param1:Event) : void
      {
         if(this.§@S§)
         {
            this.§@S§.removeEventListener(Event.COMPLETE,this.§-^§);
            this.§@S§.removeEventListener(Event.CANCEL,this.§>=§);
            mNextState = §0"§.§`O§;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§@S§)
         {
            this.§@S§ = §[&§.§&!'§.§0D§;
         }
         §"c§.getItemByName("Button_Skip").setVisibility(false);
         §,l§.§<A§();
         this.§<!!§ = false;
         var _loc1_:String = this.§`!U§();
         if(!this.§'s§(_loc1_))
         {
            mNextState = §0"§.§`O§;
         }
         else if(_loc1_ == "comp1_complete")
         {
            this.§?!C§.§'!B§ = §7!$§.§;!X§;
         }
      }
      
      private function §`!U§() : String
      {
         var _loc1_:String = §[!!§.§7R§;
         var _loc2_:String = §[!!§.§9!!§().§%F§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§[!!§.§"#§)
         {
            _loc1_ = §[!!§.§7!F§;
            _loc2_ = §[!!§.§9!!§().§%F§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§?!C§)
         {
            §[&§.§&!'§.§['§.removeChild(this.§?!C§.sprite);
            this.§?!C§.dispose();
            this.§?!C§ = null;
         }
         if(this.§@S§)
         {
            this.§@S§.removeEventListener(Event.COMPLETE,this.§-^§);
            this.§@S§.removeEventListener(Event.CANCEL,this.§>=§);
         }
         §[&§.§&!'§.§"C§(true);
         §[!!§.§7R§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§<!!§ = true;
               break;
            case "FULLSCREEN_BUTTON":
         }
      }
      
      override public function run(param1:Number) : int
      {
         §"c§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§<!!§)
         {
            this.end();
            return §[4§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         if(!this.§?!C§.update(param1))
         {
            mNextState = §0"§.§`O§;
         }
         if(this.§?!C§ && !this.§?!C§.update(param1))
         {
            this.end();
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:uint = 0;
         if(this.§?!C§ && §;!=§.credits <= 0)
         {
            _loc1_ = setTimeout(§]u§.sCheetosPopups.showPopup,400,§8!I§.NO_CREDIT,"NO_CREDIT");
            mNextState = §6l§.§`O§;
         }
         else if(this.§?!C§ && this.§?!C§.§'!B§ == §7!$§.§&,§)
         {
            mNextState = §6l§.§`O§;
         }
         else if(this.§?!C§ && this.§?!C§.§'!B§ == §7!$§.§;!X§)
         {
            mNextState = §5!5§.§`O§;
         }
         else
         {
            mNextState = §0"§.§`O§;
         }
      }
   }
}
