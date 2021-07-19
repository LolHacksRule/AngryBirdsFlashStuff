package §,!"§
{
   import §#e§.§'?§;
   import §#e§.§1b§;
   import §'!O§.§'!#§;
   import §'7§.§-!K§;
   import §'7§.§2X§;
   import §5Z§.§[Z§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   import flash.events.Event;
   
   public class StateCutScene extends §'!#§
   {
      
      public static const §-A§:String = "StateCutScene";
      
      private static const §>!;§:Number = 500;
       
      
      private var §[m§:§2X§;
      
      private var §7!5§:Boolean;
      
      private var §3F§:Number = 0;
      
      private var § !$§:Number = 0;
      
      private var §]-§:§1b§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_CutScene[0]);
      }
      
      protected function §'R§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§]-§)
            {
               §0q§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§]-§.removeEventListener(Event.COMPLETE,this.§-a§);
               this.§]-§.removeEventListener(Event.CANCEL,this.§6!$§);
               this.§]-§.addEventListener(Event.COMPLETE,this.§-a§);
               this.§]-§.addEventListener(Event.CANCEL,this.§6!$§);
               this.§]-§.§+W§("cutscene_" + param1);
            }
            else
            {
               this.§>!K§();
            }
            return true;
         }
         return false;
      }
      
      private function §-a§(param1:Event) : void
      {
         if(this.§]-§)
         {
            this.§]-§.removeEventListener(Event.COMPLETE,this.§-a§);
            this.§]-§.removeEventListener(Event.CANCEL,this.§6!$§);
            this.§>!K§();
         }
      }
      
      private function §>!K§() : void
      {
         §0q§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§=8§();
         var _loc2_:§'?§ = §'?§.§>o§;
         if(this.§]-§)
         {
            _loc2_ = this.§]-§.textureManager;
         }
         this.§[m§ = §-!K§.§+!7§(_loc1_,_loc2_);
         if(this.§[m§)
         {
            AngryBirdsFP11.§`I§.§=O§(_loc1_);
            §#! §.§`'§.§^!6§(true);
            §#! §.§`'§.§%_§(false);
            this.§[m§.update(0);
            §#! §.§`'§.§,?§.addChild(this.§[m§.sprite);
         }
      }
      
      protected function §6!$§(param1:Event) : void
      {
         if(this.§]-§)
         {
            this.§]-§.removeEventListener(Event.COMPLETE,this.§-a§);
            this.§]-§.removeEventListener(Event.CANCEL,this.§6!$§);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§]-§)
         {
            this.§]-§ = §#! §.§`'§.§5-§;
         }
         if(§[Z§.§%m§)
         {
            §[Z§.§%m§.color = 0;
         }
         this.§3F§ = 0;
         this.§ !$§ = 0;
         §0q§.getItemByName("Button_Skip").setVisibility(false);
         §0q§.getItemByName("Button_Skip").mClip.alpha = this.§3F§;
         AngryBirdsFP11.§1k§();
         this.§7!5§ = false;
         §0q§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§=8§();
         if(!this.§'R§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §=8§() : String
      {
         var _loc1_:String = §`!K§.§0r§;
         var _loc2_:String = §`!K§.§]V§().§?3§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §`!K§.§5g§;
            _loc2_ = §`!K§.§]V§().§?3§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§[m§)
         {
            §#! §.§`'§.§,?§.removeChild(this.§[m§.sprite);
            this.§[m§.dispose();
            this.§[m§ = null;
         }
         if(this.§]-§)
         {
            this.§]-§.removeEventListener(Event.COMPLETE,this.§-a§);
            this.§]-§.removeEventListener(Event.CANCEL,this.§6!$§);
         }
         §#! §.§`'§.§%_§(true);
         §`!K§.§0r§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§7!5§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`y§.§,,§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§ !$§ > §>!;§)
         {
            §0q§.getItemByName("Button_Skip").setVisibility(true);
            this.§3F§ += param1 / 1000;
            §0q§.getItemByName("Button_Skip").mClip.alpha = this.§3F§;
            if(this.§3F§ > 1)
            {
               this.§3F§ = 1;
            }
         }
         else
         {
            this.§ !$§ += param1;
         }
         if(this.§7!5§)
         {
            this.end();
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         if(this.§[m§ && !this.§[m§.update(param1))
         {
            this.end();
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§[m§ && this.§[m§.§=!6§ == §2X§.§[<§)
         {
            §0!5§.§=l§ = StateCutScene.§-A§;
            mNextState = §0!5§.§-A§;
         }
         else if(this.§[m§ && this.§[m§.§=!6§ == §2X§.§9=§)
         {
            mNextState = §,!#§.§-A§;
         }
         else
         {
            _loc1_ = §`!K§.§5g§;
            if(_loc1_)
            {
               mNextState = this.§5!'§();
            }
            else
            {
               mNextState = §0!5§.§-A§;
            }
         }
      }
      
      protected function §5!'§() : String
      {
         return §-O§.§-A§;
      }
   }
}
