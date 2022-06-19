package §_-ob§
{
   import §_-94§.§_-si§;
   import §_-A§.§_-KQ§;
   import §_-MP§.§_-N5§;
   import §_-gE§.§_-Tb§;
   import §_-hJ§.§_-5j§;
   import §_-my§.§_-DQ§;
   import §_-my§.§_-V0§;
   import §_-qU§.§_-0U§;
   import §_-qU§.§_-4t§;
   import §_-sj§.§_-qs§;
   import §_-w8§.§_-Jg§;
   import §_-w8§.§_-S6§;
   import flash.events.Event;
   import flash.utils.setTimeout;
   
   public class StateCutScene extends §_-qs§
   {
      
      public static const §_-jn§:String = "StateCutScene";
      
      private static const §_-YD§:Number = 2000;
       
      
      private var §_-Oq§:§_-4t§;
      
      private var §_-fB§:Boolean;
      
      private var §_-YJ§:§_-DQ§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-x2§ = new §_-S6§(this);
         §_-x2§.init(§_-Jg§.§_-E§.Views.View_CutScene[0]);
      }
      
      protected function §_-pc§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§_-YJ§)
            {
               this.§_-YJ§.removeEventListener(Event.COMPLETE,this.§_-p-§);
               this.§_-YJ§.removeEventListener(Event.CANCEL,this.§_-Ue§);
               this.§_-YJ§.addEventListener(Event.COMPLETE,this.§_-p-§);
               this.§_-YJ§.addEventListener(Event.CANCEL,this.§_-Ue§);
               this.§_-YJ§.§_-c-§("cutscene_" + param1);
            }
            else
            {
               this.§_-Ba§();
            }
            return true;
         }
         return false;
      }
      
      private function §_-p-§(param1:Event) : void
      {
         if(this.§_-YJ§)
         {
            this.§_-YJ§.removeEventListener(Event.COMPLETE,this.§_-p-§);
            this.§_-YJ§.removeEventListener(Event.CANCEL,this.§_-Ue§);
            this.§_-Ba§();
         }
      }
      
      private function §_-Ba§() : void
      {
         var _loc1_:String = this.§_-W-§();
         var _loc2_:§_-V0§ = §_-V0§.§_-0H§;
         if(this.§_-YJ§)
         {
            _loc2_ = this.§_-YJ§.§_-3q§;
         }
         this.§_-Oq§ = §_-0U§.§_-hR§(_loc1_,_loc2_);
         if(this.§_-Oq§)
         {
            §_-rs§.§_-Nr§.§_-Tg§(_loc1_);
            §_-si§.§_-HI§.§_-2c§(true);
            §_-si§.§_-HI§.§_-bY§(false);
            this.§_-Oq§.update(0);
            §_-si§.§_-HI§.§_-os§.addChild(this.§_-Oq§.sprite);
         }
      }
      
      private function §_-Ue§(param1:Event) : void
      {
         if(this.§_-YJ§)
         {
            this.§_-YJ§.removeEventListener(Event.COMPLETE,this.§_-p-§);
            this.§_-YJ§.removeEventListener(Event.CANCEL,this.§_-Ue§);
            mNextState = §_-0-n§.§_-jn§;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§_-YJ§)
         {
            this.§_-YJ§ = §_-si§.§_-HI§.§_-St§;
         }
         §_-x2§.getItemByName("Button_Skip").setVisibility(false);
         §_-rs§.§_-Q0§();
         this.§_-fB§ = false;
         var _loc1_:String = this.§_-W-§();
         if(!this.§_-pc§(_loc1_))
         {
            mNextState = §_-0-n§.§_-jn§;
         }
         else if(_loc1_ == "comp1_complete")
         {
            this.§_-Oq§.§_-qi§ = §_-4t§.§_-9d§;
         }
      }
      
      private function §_-W-§() : String
      {
         var _loc1_:String = §_-N5§.§_-1m§;
         var _loc2_:String = §_-N5§.§_-Ft§().§_-xM§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§_-N5§.§_-Kk§)
         {
            _loc1_ = §_-N5§.§_-sI§;
            _loc2_ = §_-N5§.§_-Ft§().§_-xM§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-Oq§)
         {
            §_-si§.§_-HI§.§_-os§.removeChild(this.§_-Oq§.sprite);
            this.§_-Oq§.dispose();
            this.§_-Oq§ = null;
         }
         if(this.§_-YJ§)
         {
            this.§_-YJ§.removeEventListener(Event.COMPLETE,this.§_-p-§);
            this.§_-YJ§.removeEventListener(Event.CANCEL,this.§_-Ue§);
         }
         §_-si§.§_-HI§.§_-bY§(true);
         §_-N5§.§_-1m§ = null;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-KQ§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§_-fB§ = true;
               break;
            case "FULLSCREEN_BUTTON":
         }
      }
      
      override public function run(param1:Number) : int
      {
         §_-x2§.getItemByName("Button_Skip").setVisibility(true);
         if(this.§_-fB§)
         {
            this.end();
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         if(!this.§_-Oq§.update(param1))
         {
            mNextState = §_-0-n§.§_-jn§;
         }
         if(this.§_-Oq§ && !this.§_-Oq§.update(param1))
         {
            this.end();
         }
         return §_-qs§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:uint = 0;
         if(this.§_-Oq§ && §_-Tb§.credits <= 0)
         {
            _loc1_ = setTimeout(§_-xw§.sCheetosPopups.showPopup,400,§_-5j§.NO_CREDIT,"NO_CREDIT");
            mNextState = §_-qP§.§_-jn§;
         }
         else if(this.§_-Oq§ && this.§_-Oq§.§_-qi§ == §_-4t§.§_-pk§)
         {
            mNextState = §_-qP§.§_-jn§;
         }
         else if(this.§_-Oq§ && this.§_-Oq§.§_-qi§ == §_-4t§.§_-9d§)
         {
            mNextState = §_-p6§.§_-jn§;
         }
         else
         {
            mNextState = §_-0-n§.§_-jn§;
         }
      }
   }
}
