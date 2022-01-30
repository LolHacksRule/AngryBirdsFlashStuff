package §,i§
{
   import §%t§.§-!5§;
   import §%t§.§[!B§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5!5§.§^e§;
   import §7M§.§"?§;
   import §9A§.§30§;
   import §9A§.§^!<§;
   import §<8§.§7!n§;
   import flash.events.Event;
   
   public class StateCutScene extends §0!K§
   {
      
      public static const §]"2§:String = "StateCutScene";
      
      private static const § ![§:Number = 500;
       
      
      private var §"",§:§^!<§;
      
      private var §8!B§:Boolean;
      
      private var §5!y§:Number = 0;
      
      private var §["7§:Number = 0;
      
      private var §2G§:§[!B§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_CutScene[0]);
      }
      
      protected function §'!t§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§2G§)
            {
               §'K§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§2G§.removeEventListener(Event.COMPLETE,this.§,!g§);
               this.§2G§.removeEventListener(Event.CANCEL,this.§"!>§);
               this.§2G§.addEventListener(Event.COMPLETE,this.§,!g§);
               this.§2G§.addEventListener(Event.CANCEL,this.§"!>§);
               this.§2G§.§=!U§("cutscene_" + param1);
            }
            else
            {
               this.§&t§();
            }
            return true;
         }
         return false;
      }
      
      private function §,!g§(param1:Event) : void
      {
         if(this.§2G§)
         {
            this.§2G§.removeEventListener(Event.COMPLETE,this.§,!g§);
            this.§2G§.removeEventListener(Event.CANCEL,this.§"!>§);
            this.§&t§();
         }
      }
      
      private function §&t§() : void
      {
         §'K§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§"!N§();
         var _loc2_:§-!5§ = §-!5§.§,l§;
         if(this.§2G§)
         {
            _loc2_ = this.§2G§.§>=§;
         }
         this.§"",§ = §30§.§9g§(_loc1_,_loc2_);
         if(this.§"",§)
         {
            AngryBirdsFP11.§<U§.§4"#§(_loc1_);
            §"!V§.§!j§.§9!q§(true);
            §"!V§.§!j§.§-6§(false);
            this.§"",§.update(0);
            §"!V§.§!j§.§=!;§.addChild(this.§"",§.sprite);
         }
      }
      
      protected function §"!>§(param1:Event) : void
      {
         if(this.§2G§)
         {
            this.§2G§.removeEventListener(Event.COMPLETE,this.§,!g§);
            this.§2G§.removeEventListener(Event.CANCEL,this.§"!>§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§2G§)
         {
            this.§2G§ = §"!V§.§!j§.§3!V§;
         }
         if(§^e§.§-_§)
         {
            §^e§.§-_§.color = 0;
         }
         this.§5!y§ = 0;
         this.§["7§ = 0;
         §'K§.getItemByName("Button_Skip").setVisibility(false);
         §'K§.getItemByName("Button_Skip").mClip.alpha = this.§5!y§;
         AngryBirdsFP11.§7W§();
         this.§8!B§ = false;
         §'K§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§"!N§();
         if(!this.§'!t§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §"!N§() : String
      {
         var _loc1_:String = §"?§.§5O§;
         var _loc2_:String = §"?§.§-!"§().§;U§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §"?§.§4M§;
            _loc2_ = §"?§.§-!"§().§;U§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§"",§)
         {
            §"!V§.§!j§.§=!;§.removeChild(this.§"",§.sprite);
            this.§"",§.dispose();
            this.§"",§ = null;
         }
         if(this.§2G§)
         {
            this.§2G§.removeEventListener(Event.COMPLETE,this.§,!g§);
            this.§2G§.removeEventListener(Event.CANCEL,this.§"!>§);
         }
         §"!V§.§!j§.§-6§(true);
         §"?§.§5O§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§8!B§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'"0§.§[!>§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§["7§ > § ![§)
         {
            §'K§.getItemByName("Button_Skip").setVisibility(true);
            this.§5!y§ += param1 / 1000;
            §'K§.getItemByName("Button_Skip").mClip.alpha = this.§5!y§;
            if(this.§5!y§ > 1)
            {
               this.§5!y§ = 1;
            }
         }
         else
         {
            this.§["7§ += param1;
         }
         if(this.§8!B§)
         {
            this.end();
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         if(this.§"",§ && !this.§"",§.update(param1))
         {
            this.end();
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§"",§ && this.§"",§.§<!o§ == §^!<§.§2q§)
         {
            §6!x§.§<!F§ = StateCutScene.§]"2§;
            mNextState = §6!x§.§]"2§;
         }
         else if(this.§"",§ && this.§"",§.§<!o§ == §^!<§.§+!5§)
         {
            mNextState = §-q§.§]"2§;
         }
         else
         {
            _loc1_ = §"?§.§4M§;
            if(_loc1_)
            {
               mNextState = this.§'"-§();
            }
            else
            {
               mNextState = §6!x§.§]"2§;
            }
         }
      }
      
      protected function §'"-§() : String
      {
         return §>Y§.§]"2§;
      }
   }
}
