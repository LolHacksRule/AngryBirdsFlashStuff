package §0![§
{
   import §"v§.§3!w§;
   import §%%§.§5!a§;
   import §%%§.§6!_§;
   import §%c§.§=!X§;
   import §&"5§.§3s§;
   import §&"5§.§7!P§;
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §6p§.§?%§;
   import flash.events.Event;
   
   public class StateCutScene extends §5y§
   {
      
      public static const §'=§:String = "StateCutScene";
      
      private static const §`">§:Number = 500;
       
      
      private var §3!m§:§6!_§;
      
      private var §^6§:Boolean;
      
      private var §9E§:Number = 0;
      
      private var §<+§:Number = 0;
      
      private var §,E§:§3s§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_CutScene[0]);
      }
      
      protected function §4!W§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§,E§)
            {
               §?E§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§,E§.removeEventListener(Event.COMPLETE,this.§+"+§);
               this.§,E§.removeEventListener(Event.CANCEL,this.§8f§);
               this.§,E§.addEventListener(Event.COMPLETE,this.§+"+§);
               this.§,E§.addEventListener(Event.CANCEL,this.§8f§);
               this.§,E§.§"f§("cutscene_" + param1);
            }
            else
            {
               this.§%!G§();
            }
            return true;
         }
         return false;
      }
      
      private function §+"+§(param1:Event) : void
      {
         if(this.§,E§)
         {
            this.§,E§.removeEventListener(Event.COMPLETE,this.§+"+§);
            this.§,E§.removeEventListener(Event.CANCEL,this.§8f§);
            this.§%!G§();
         }
      }
      
      private function §%!G§() : void
      {
         §?E§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§#!t§();
         var _loc2_:§7!P§ = §7!P§.§2=§;
         if(this.§,E§)
         {
            _loc2_ = this.§,E§.§7!J§;
         }
         this.§3!m§ = §5!a§.§7!x§(_loc1_,_loc2_);
         if(this.§3!m§)
         {
            AngryBirdsFP11.§>" §.§^"9§(_loc1_);
            §=!X§.§!'§.§;p§(true);
            §=!X§.§!'§.§'7§(false);
            this.§3!m§.update(0);
            §=!X§.§!'§.§+!=§.addChild(this.§3!m§.sprite);
         }
      }
      
      protected function §8f§(param1:Event) : void
      {
         if(this.§,E§)
         {
            this.§,E§.removeEventListener(Event.COMPLETE,this.§+"+§);
            this.§,E§.removeEventListener(Event.CANCEL,this.§8f§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§,E§)
         {
            this.§,E§ = §=!X§.§!'§.§;!p§;
         }
         if(§?%§.§%b§)
         {
            §?%§.§%b§.color = 0;
         }
         this.§9E§ = 0;
         this.§<+§ = 0;
         §?E§.getItemByName("Button_Skip").setVisibility(false);
         §?E§.getItemByName("Button_Skip").mClip.alpha = this.§9E§;
         AngryBirdsFP11.§@!1§();
         this.§^6§ = false;
         §?E§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§#!t§();
         if(!this.§4!W§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §#!t§() : String
      {
         var _loc1_:String = §3!w§.§8H§;
         var _loc2_:String = §3!w§.§4I§().§3!2§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §3!w§.§%n§;
            _loc2_ = §3!w§.§4I§().§3!2§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§3!m§)
         {
            §=!X§.§!'§.§+!=§.removeChild(this.§3!m§.sprite);
            this.§3!m§.dispose();
            this.§3!m§ = null;
         }
         if(this.§,E§)
         {
            this.§,E§.removeEventListener(Event.COMPLETE,this.§+"+§);
            this.§,E§.removeEventListener(Event.CANCEL,this.§8f§);
         }
         §=!X§.§!'§.§'7§(true);
         §3!w§.§8H§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§^6§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§%d§.§9+§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§<+§ > §`">§)
         {
            §?E§.getItemByName("Button_Skip").setVisibility(true);
            this.§9E§ += param1 / 1000;
            §?E§.getItemByName("Button_Skip").mClip.alpha = this.§9E§;
            if(this.§9E§ > 1)
            {
               this.§9E§ = 1;
            }
         }
         else
         {
            this.§<+§ += param1;
         }
         if(this.§^6§)
         {
            this.end();
            return §5y§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         if(this.§3!m§ && !this.§3!m§.update(param1))
         {
            this.end();
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§3!m§ && this.§3!m§.§^v§ == §6!_§.§7_§)
         {
            §7B§.§[""§ = StateCutScene.§'=§;
            mNextState = §7B§.§'=§;
         }
         else if(this.§3!m§ && this.§3!m§.§^v§ == §6!_§.§0!Q§)
         {
            mNextState = §'"6§.§'=§;
         }
         else
         {
            _loc1_ = §3!w§.§%n§;
            if(_loc1_)
            {
               mNextState = this.§]!W§();
            }
            else
            {
               mNextState = §7B§.§'=§;
            }
         }
      }
      
      protected function §]!W§() : String
      {
         return §0!v§.§'=§;
      }
   }
}
