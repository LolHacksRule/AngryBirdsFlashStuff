package §##§
{
   import § !N§.§#!O§;
   import § !N§.§`v§;
   import §'!I§.§6A§;
   import §'!I§.§8Y§;
   import §'!N§.§%!E§;
   import §,!<§.§6!M§;
   import §5=§.§^n§;
   import §5J§.§>$§;
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.events.Event;
   
   public class StateCutScene extends §6!M§
   {
      
      public static const §=,§:String = "StateCutScene";
      
      private static const §`V§:Number = 500;
       
      
      private var §[!;§:§6A§;
      
      private var §!!8§:Boolean;
      
      private var §^!A§:Number = 0;
      
      private var §"!"§:Number = 0;
      
      private var §;M§:§#!O§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_CutScene[0]);
      }
      
      protected function §4?§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§;M§)
            {
               § §.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§;M§.removeEventListener(Event.COMPLETE,this.§<d§);
               this.§;M§.removeEventListener(Event.CANCEL,this.§?!=§);
               this.§;M§.addEventListener(Event.COMPLETE,this.§<d§);
               this.§;M§.addEventListener(Event.CANCEL,this.§?!=§);
               this.§;M§.§;<§("cutscene_" + param1);
            }
            else
            {
               this.§]'§();
            }
            return true;
         }
         return false;
      }
      
      private function §<d§(param1:Event) : void
      {
         if(this.§;M§)
         {
            this.§;M§.removeEventListener(Event.COMPLETE,this.§<d§);
            this.§;M§.removeEventListener(Event.CANCEL,this.§?!=§);
            this.§]'§();
         }
      }
      
      private function §]'§() : void
      {
         § §.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§-!B§();
         var _loc2_:§`v§ = §`v§.§4J§;
         if(this.§;M§)
         {
            _loc2_ = this.§;M§.textureManager;
         }
         this.§[!;§ = §8Y§.§+W§(_loc1_,_loc2_);
         if(this.§[!;§)
         {
            AngryBirdsFP11.§ ;§.§]S§(_loc1_);
            §2G§.§7!,§.§`!>§(true);
            §2G§.§7!,§.§18§(false);
            this.§[!;§.update(0);
            §2G§.§7!,§.§[!H§.addChild(this.§[!;§.sprite);
         }
      }
      
      protected function §?!=§(param1:Event) : void
      {
         if(this.§;M§)
         {
            this.§;M§.removeEventListener(Event.COMPLETE,this.§<d§);
            this.§;M§.removeEventListener(Event.CANCEL,this.§?!=§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§;M§)
         {
            this.§;M§ = §2G§.§7!,§.§=1§;
         }
         if(§>$§.§-U§)
         {
            §>$§.§-U§.color = 0;
         }
         this.§^!A§ = 0;
         this.§"!"§ = 0;
         § §.getItemByName("Button_Skip").setVisibility(false);
         § §.getItemByName("Button_Skip").mClip.alpha = this.§^!A§;
         AngryBirdsFP11.§=!<§();
         this.§!!8§ = false;
         § §.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§-!B§();
         if(!this.§4?§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §-!B§() : String
      {
         var _loc1_:String = §^n§.§8!1§;
         var _loc2_:String = §^n§.§>V§().§-!F§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §^n§.§-7§;
            _loc2_ = §^n§.§>V§().§-!F§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§[!;§)
         {
            §2G§.§7!,§.§[!H§.removeChild(this.§[!;§.sprite);
            this.§[!;§.dispose();
            this.§[!;§ = null;
         }
         if(this.§;M§)
         {
            this.§;M§.removeEventListener(Event.COMPLETE,this.§<d§);
            this.§;M§.removeEventListener(Event.CANCEL,this.§?!=§);
         }
         §2G§.§7!,§.§18§(true);
         §^n§.§8!1§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§!!8§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§<2§.§ !J§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§"!"§ > §`V§)
         {
            § §.getItemByName("Button_Skip").setVisibility(true);
            this.§^!A§ += param1 / 1000;
            § §.getItemByName("Button_Skip").mClip.alpha = this.§^!A§;
            if(this.§^!A§ > 1)
            {
               this.§^!A§ = 1;
            }
         }
         else
         {
            this.§"!"§ += param1;
         }
         if(this.§!!8§)
         {
            this.end();
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         if(this.§[!;§ && !this.§[!;§.update(param1))
         {
            this.end();
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§[!;§ && this.§[!;§.§,B§ == §6A§.§^!B§)
         {
            §5!E§.§[!1§ = StateCutScene.§=,§;
            mNextState = §5!E§.§=,§;
         }
         else if(this.§[!;§ && this.§[!;§.§,B§ == §6A§.§-R§)
         {
            mNextState = §2!5§.§=,§;
         }
         else
         {
            _loc1_ = §^n§.§-7§;
            if(_loc1_)
            {
               mNextState = this.§2!>§();
            }
            else
            {
               mNextState = §5!E§.§=,§;
            }
         }
      }
      
      protected function §2!>§() : String
      {
         return §6l§.§=,§;
      }
   }
}
