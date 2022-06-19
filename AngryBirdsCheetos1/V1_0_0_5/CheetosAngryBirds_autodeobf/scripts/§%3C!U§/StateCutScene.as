package §<!U§
{
   import §!J§.§[&§;
   import §#K§.§<!+§;
   import §%j§.§#!,§;
   import §%j§.§8a§;
   import §&!W§.§4W§;
   import §&!W§.§8!K§;
   import §-M§.§+?§;
   import §-M§.§3!6§;
   import §-V§.§@R§;
   import §3!C§.§3o§;
   import §4!H§.§[4§;
   import §?!1§.§+a§;
   import flash.events.Event;
   import flash.utils.setTimeout;
   
   public class StateCutScene extends §[4§
   {
      
      public static const §`O§:String = "StateCutScene";
      
      private static const §<!T§:Number = 2000;
       
      
      private var §?!C§:§#!,§;
      
      private var §<!!§:Boolean;
      
      private var §@S§:§4W§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §3!6§(this);
         §"c§.init(§+?§.§@]§.Views.View_CutScene[0]);
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
               this.§@S§.§[?§("cutscene_" + param1);
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
         var _loc2_:§8!K§ = §8!K§.§-!U§;
         if(this.§@S§)
         {
            _loc2_ = this.§@S§.§"B§;
         }
         this.§?!C§ = §8a§.§^!B§(_loc1_,_loc2_);
         if(this.§?!C§)
         {
            §,l§.§3!,§.§4y§(_loc1_);
            §[&§.§&!'§.§1K§(true);
            §[&§.§&!'§.§>!D§(false);
            this.§?!C§.update(0);
            §[&§.§&!'§.§6@§.addChild(this.§?!C§.sprite);
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
            this.§@S§ = §[&§.§&!'§.§null §;
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
            this.§?!C§.§=!K§ = §#!,§.§&,§;
         }
      }
      
      private function §`!U§() : String
      {
         var _loc1_:String = §<!+§.§7!F§;
         var _loc2_:String = §<!+§.§9E§().§2!+§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§<!+§.§7R§)
         {
            _loc1_ = §<!+§.§^R§;
            _loc2_ = §<!+§.§9E§().§2!+§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§?!C§)
         {
            §[&§.§&!'§.§6@§.removeChild(this.§?!C§.sprite);
            this.§?!C§.dispose();
            this.§?!C§ = null;
         }
         if(this.§@S§)
         {
            this.§@S§.removeEventListener(Event.COMPLETE,this.§-^§);
            this.§@S§.removeEventListener(Event.CANCEL,this.§>=§);
         }
         §[&§.§&!'§.§>!D§(true);
         §<!+§.§7!F§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@R§) : void
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
         if(this.§?!C§ && §3o§.credits <= 0)
         {
            _loc1_ = setTimeout(§]u§.sCheetosPopups.showPopup,400,§+a§.NO_CREDIT,"NO_CREDIT");
            mNextState = §6l§.§`O§;
         }
         else if(this.§?!C§ && this.§?!C§.§=!K§ == §#!,§.§3!5§)
         {
            mNextState = §6l§.§`O§;
         }
         else if(this.§?!C§ && this.§?!C§.§=!K§ == §#!,§.§&,§)
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
