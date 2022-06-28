package §;m§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §5`§.§?y§;
   import §5`§.§@B§;
   import §6H§.§>3§;
   import §9!7§.§ !A§;
   import §9!7§.§?U§;
   import §=!B§.§59§;
   import §`!0§.§"?§;
   import §catch§.§4@§;
   import flash.events.Event;
   
   public class StateCutScene extends §>3§
   {
      
      public static const §-!A§:String = "StateCutScene";
      
      private static const §+D§:Number = 500;
       
      
      private var §@!?§:§ !A§;
      
      private var §<G§:Boolean;
      
      private var §+m§:Number = 0;
      
      private var §!!?§:Number = 0;
      
      private var §++§:§@B§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_CutScene[0]);
      }
      
      protected function §3!6§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§++§)
            {
               §-f§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§++§.removeEventListener(Event.COMPLETE,this.§#!?§);
               this.§++§.removeEventListener(Event.CANCEL,this.§1!8§);
               this.§++§.addEventListener(Event.COMPLETE,this.§#!?§);
               this.§++§.addEventListener(Event.CANCEL,this.§1!8§);
               this.§++§.§[!2§("cutscene_" + param1);
            }
            else
            {
               this.§'!2§();
            }
            return true;
         }
         return false;
      }
      
      private function §#!?§(param1:Event) : void
      {
         if(this.§++§)
         {
            this.§++§.removeEventListener(Event.COMPLETE,this.§#!?§);
            this.§++§.removeEventListener(Event.CANCEL,this.§1!8§);
            this.§'!2§();
         }
      }
      
      private function §'!2§() : void
      {
         §-f§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§2W§();
         var _loc2_:§?y§ = §?y§.§@j§;
         if(this.§++§)
         {
            _loc2_ = this.§++§.textureManager;
         }
         this.§@!?§ = §?U§.§var §(_loc1_,_loc2_);
         if(this.§@!?§)
         {
            AngryBirdsFP11.sUserProgress.§&c§(_loc1_);
            §"h§.§1C§.§]!!§(true);
            §"h§.§1C§.§`M§(false);
            this.§@!?§.update(0);
            §"h§.§1C§.§35§.addChild(this.§@!?§.sprite);
         }
      }
      
      protected function §1!8§(param1:Event) : void
      {
         if(this.§++§)
         {
            this.§++§.removeEventListener(Event.COMPLETE,this.§#!?§);
            this.§++§.removeEventListener(Event.CANCEL,this.§1!8§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§++§)
         {
            this.§++§ = §"h§.§1C§.§^!#§;
         }
         if(§4@§.§0W§)
         {
            §4@§.§0W§.color = 0;
         }
         this.§+m§ = 0;
         this.§!!?§ = 0;
         §-f§.getItemByName("Button_Skip").setVisibility(false);
         §-f§.getItemByName("Button_Skip").mClip.alpha = this.§+m§;
         AngryBirdsFP11.§-+§();
         this.§<G§ = false;
         §-f§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§2W§();
         if(!this.§3!6§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §2W§() : String
      {
         var _loc1_:String = §59§.§72§;
         var _loc2_:String = §59§.§8!F§().§&n§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §59§.§%j§;
            _loc2_ = §59§.§8!F§().§&n§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§@!?§)
         {
            §"h§.§1C§.§35§.removeChild(this.§@!?§.sprite);
            this.§@!?§.dispose();
            this.§@!?§ = null;
         }
         if(this.§++§)
         {
            this.§++§.removeEventListener(Event.COMPLETE,this.§#!?§);
            this.§++§.removeEventListener(Event.CANCEL,this.§1!8§);
         }
         §"h§.§1C§.§`M§(true);
         §59§.§72§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§<G§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§0P§.§<h§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§!!?§ > §+D§)
         {
            §-f§.getItemByName("Button_Skip").setVisibility(true);
            this.§+m§ += param1 / 1000;
            §-f§.getItemByName("Button_Skip").mClip.alpha = this.§+m§;
            if(this.§+m§ > 1)
            {
               this.§+m§ = 1;
            }
         }
         else
         {
            this.§!!?§ += param1;
         }
         if(this.§<G§)
         {
            this.end();
            return §>3§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §>3§.STATE_STATUS_COMPLETED;
         }
         if(this.§@!?§ && !this.§@!?§.update(param1))
         {
            this.end();
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§@!?§ && this.§@!?§.§+g§ == § !A§.§!x§)
         {
            §>!B§.§@!D§ = StateCutScene.§-!A§;
            mNextState = §>!B§.§-!A§;
         }
         else if(this.§@!?§ && this.§@!?§.§+g§ == § !A§.§!1§)
         {
            mNextState = §>!G§.§-!A§;
         }
         else
         {
            _loc1_ = §59§.§%j§;
            if(_loc1_)
            {
               mNextState = this.§2J§();
            }
            else
            {
               mNextState = §>!B§.§-!A§;
            }
         }
      }
      
      protected function §2J§() : String
      {
         return §3'§.§-!A§;
      }
   }
}
