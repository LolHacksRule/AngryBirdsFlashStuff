package §?'§
{
   import §&V§.§,w§;
   import §&V§.§`V§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §@!%§.§+8§;
   import §[!8§.§'[§;
   import §[!8§.§7!1§;
   import §`<§.§,!6§;
   import flash.events.Event;
   import §in§.§%K§;
   
   public class StateCutScene extends §,!6§
   {
      
      public static const §`%§:String = "StateCutScene";
      
      private static const §!!2§:Number = 500;
       
      
      private var §-9§:§'[§;
      
      private var §"C§:Boolean;
      
      private var §4U§:Number = 0;
      
      private var §'_§:Number = 0;
      
      private var §7!7§:§`V§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_CutScene[0]);
      }
      
      protected function §+!E§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§7!7§)
            {
               §<o§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§7!7§.removeEventListener(Event.COMPLETE,this.§[!%§);
               this.§7!7§.removeEventListener(Event.CANCEL,this.§<m§);
               this.§7!7§.addEventListener(Event.COMPLETE,this.§[!%§);
               this.§7!7§.addEventListener(Event.CANCEL,this.§<m§);
               this.§7!7§.§"! §("cutscene_" + param1);
            }
            else
            {
               this.§3m§();
            }
            return true;
         }
         return false;
      }
      
      private function §[!%§(param1:Event) : void
      {
         if(this.§7!7§)
         {
            this.§7!7§.removeEventListener(Event.COMPLETE,this.§[!%§);
            this.§7!7§.removeEventListener(Event.CANCEL,this.§<m§);
            this.§3m§();
         }
      }
      
      private function §3m§() : void
      {
         §<o§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§2!-§();
         var _loc2_:§,w§ = §,w§.§5!B§;
         if(this.§7!7§)
         {
            _loc2_ = this.§7!7§.textureManager;
         }
         this.§-9§ = §7!1§.§4!C§(_loc1_,_loc2_);
         if(this.§-9§)
         {
            AngryBirdsFP11.§[l§.§!!-§(_loc1_);
            §8[§.§import§.§5q§(true);
            §8[§.§import§.§0<§(false);
            this.§-9§.update(0);
            §8[§.§import§.§`i§.addChild(this.§-9§.sprite);
         }
      }
      
      protected function §<m§(param1:Event) : void
      {
         if(this.§7!7§)
         {
            this.§7!7§.removeEventListener(Event.COMPLETE,this.§[!%§);
            this.§7!7§.removeEventListener(Event.CANCEL,this.§<m§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§7!7§)
         {
            this.§7!7§ = §8[§.§import§.§@!A§;
         }
         if(§+8§.§-2§)
         {
            §+8§.§-2§.color = 0;
         }
         this.§4U§ = 0;
         this.§'_§ = 0;
         §<o§.getItemByName("Button_Skip").setVisibility(false);
         §<o§.getItemByName("Button_Skip").mClip.alpha = this.§4U§;
         AngryBirdsFP11.§20§();
         this.§"C§ = false;
         §<o§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§2!-§();
         if(!this.§+!E§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §2!-§() : String
      {
         var _loc1_:String = §&#§.§=Q§;
         var _loc2_:String = §&#§.§ for§().§#$§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §&#§.§<Y§;
            _loc2_ = §&#§.§ for§().§#$§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§-9§)
         {
            §8[§.§import§.§`i§.removeChild(this.§-9§.sprite);
            this.§-9§.dispose();
            this.§-9§ = null;
         }
         if(this.§7!7§)
         {
            this.§7!7§.removeEventListener(Event.COMPLETE,this.§[!%§);
            this.§7!7§.removeEventListener(Event.CANCEL,this.§<m§);
         }
         §8[§.§import§.§0<§(true);
         §&#§.§=Q§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§"C§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`H§.§>&§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§'_§ > §!!2§)
         {
            §<o§.getItemByName("Button_Skip").setVisibility(true);
            this.§4U§ += param1 / 1000;
            §<o§.getItemByName("Button_Skip").mClip.alpha = this.§4U§;
            if(this.§4U§ > 1)
            {
               this.§4U§ = 1;
            }
         }
         else
         {
            this.§'_§ += param1;
         }
         if(this.§"C§)
         {
            this.end();
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         if(this.§-9§ && !this.§-9§.update(param1))
         {
            this.end();
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§-9§ && this.§-9§.§!s§ == §'[§.§@!E§)
         {
            §8m§.§5z§ = StateCutScene.§`%§;
            mNextState = §8m§.§`%§;
         }
         else if(this.§-9§ && this.§-9§.§!s§ == §'[§.§&!!§)
         {
            mNextState = §2!!§.§`%§;
         }
         else
         {
            _loc1_ = §&#§.§<Y§;
            if(_loc1_)
            {
               mNextState = this.§0,§();
            }
            else
            {
               mNextState = §8m§.§`%§;
            }
         }
      }
      
      protected function §0,§() : String
      {
         return §`0§.§`%§;
      }
   }
}
