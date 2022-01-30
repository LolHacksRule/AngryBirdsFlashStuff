package §-P§
{
   import § !V§.§7!P§;
   import § !V§.§8!J§;
   import §'!O§.§[!m§;
   import §0!F§.§^d§;
   import §8!w§.§-G§;
   import §8!w§.§<A§;
   import §9!7§.§#p§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   import flash.events.Event;
   
   public class StateCutScene extends §4E§
   {
      
      public static const §#!w§:String = "StateCutScene";
      
      private static const § 4§:Number = 500;
       
      
      private var §;!v§:§-G§;
      
      private var §4!T§:Boolean;
      
      private var §!>§:Number = 0;
      
      private var §^!t§:Number = 0;
      
      private var §8s§:§8!J§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_CutScene[0]);
      }
      
      protected function §"!9§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§8s§)
            {
               §1!j§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§8s§.removeEventListener(Event.COMPLETE,this.§4!>§);
               this.§8s§.removeEventListener(Event.CANCEL,this.§,!§);
               this.§8s§.addEventListener(Event.COMPLETE,this.§4!>§);
               this.§8s§.addEventListener(Event.CANCEL,this.§,!§);
               this.§8s§.§&^§("cutscene_" + param1);
            }
            else
            {
               this.§%!_§();
            }
            return true;
         }
         return false;
      }
      
      private function §4!>§(param1:Event) : void
      {
         if(this.§8s§)
         {
            this.§8s§.removeEventListener(Event.COMPLETE,this.§4!>§);
            this.§8s§.removeEventListener(Event.CANCEL,this.§,!§);
            this.§%!_§();
         }
      }
      
      private function §%!_§() : void
      {
         §1!j§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§!<§();
         var _loc2_:§7!P§ = §7!P§.§9j§;
         if(this.§8s§)
         {
            _loc2_ = this.§8s§.§7<§;
         }
         this.§;!v§ = §<A§.§`!$§(_loc1_,_loc2_);
         if(this.§;!v§)
         {
            AngryBirdsFP11.§8!v§.§3!R§(_loc1_);
            §8!0§.§?2§.§<;§(true);
            §8!0§.§?2§.§;!0§(false);
            this.§;!v§.update(0);
            §8!0§.§?2§.§9D§.addChild(this.§;!v§.sprite);
         }
      }
      
      protected function §,!§(param1:Event) : void
      {
         if(this.§8s§)
         {
            this.§8s§.removeEventListener(Event.COMPLETE,this.§4!>§);
            this.§8s§.removeEventListener(Event.CANCEL,this.§,!§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§8s§)
         {
            this.§8s§ = §8!0§.§?2§.§01§;
         }
         if(§^d§.§+!f§)
         {
            §^d§.§+!f§.color = 0;
         }
         this.§!>§ = 0;
         this.§^!t§ = 0;
         §1!j§.getItemByName("Button_Skip").setVisibility(false);
         §1!j§.getItemByName("Button_Skip").mClip.alpha = this.§!>§;
         AngryBirdsFP11.§5!j§();
         this.§4!T§ = false;
         §1!j§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§!<§();
         if(!this.§"!9§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §!<§() : String
      {
         var _loc1_:String = §[!m§.§use§;
         var _loc2_:String = §[!m§.§<!<§().§]r§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §[!m§.§<!D§;
            _loc2_ = §[!m§.§<!<§().§]r§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§;!v§)
         {
            §8!0§.§?2§.§9D§.removeChild(this.§;!v§.sprite);
            this.§;!v§.dispose();
            this.§;!v§ = null;
         }
         if(this.§8s§)
         {
            this.§8s§.removeEventListener(Event.COMPLETE,this.§4!>§);
            this.§8s§.removeEventListener(Event.CANCEL,this.§,!§);
         }
         §8!0§.§?2§.§;!0§(true);
         §[!m§.§use§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§4!T§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!U§.§2!Z§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§^!t§ > § 4§)
         {
            §1!j§.getItemByName("Button_Skip").setVisibility(true);
            this.§!>§ += param1 / 1000;
            §1!j§.getItemByName("Button_Skip").mClip.alpha = this.§!>§;
            if(this.§!>§ > 1)
            {
               this.§!>§ = 1;
            }
         }
         else
         {
            this.§^!t§ += param1;
         }
         if(this.§4!T§)
         {
            this.end();
            return §4E§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         if(this.§;!v§ && !this.§;!v§.update(param1))
         {
            this.end();
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§;!v§ && this.§;!v§.§>s§ == §-G§.§+!s§)
         {
            §1f§.§9-§ = StateCutScene.§#!w§;
            mNextState = §1f§.§#!w§;
         }
         else if(this.§;!v§ && this.§;!v§.§>s§ == §-G§.§<!t§)
         {
            mNextState = §^!P§.§#!w§;
         }
         else
         {
            _loc1_ = §[!m§.§<!D§;
            if(_loc1_)
            {
               mNextState = this.§@!x§();
            }
            else
            {
               mNextState = §1f§.§#!w§;
            }
         }
      }
      
      protected function §@!x§() : String
      {
         return §[!E§.§#!w§;
      }
   }
}
