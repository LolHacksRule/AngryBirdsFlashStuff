package §_-ad§
{
   import §_-0Ea§.§_-AY§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-tA§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-n§.§_-0BF§;
   import §_-n§.§_-II§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.events.Event;
   
   public class StateCutScene extends §_-nG§
   {
      
      public static const §_-pk§:String = "StateCutScene";
      
      private static const §_-cr§:Number = 500;
       
      
      private var §_-Bw§:§_-0BF§;
      
      private var §_-06t§:Boolean;
      
      private var §_-hI§:Number = 0;
      
      private var §_-Qe§:Number = 0;
      
      private var §_-yV§:§_-tA§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_CutScene[0]);
      }
      
      protected function §_-Ir§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§_-yV§)
            {
               §_-s0§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§_-yV§.removeEventListener(Event.COMPLETE,this.§_-0Bl§);
               this.§_-yV§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§_-yV§.addEventListener(Event.COMPLETE,this.§_-0Bl§);
               this.§_-yV§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§_-yV§.§_-r7§("cutscene_" + param1);
            }
            else
            {
               this.§_-m5§();
            }
            return true;
         }
         return false;
      }
      
      private function §_-0Bl§(param1:Event) : void
      {
         if(this.§_-yV§)
         {
            this.§_-yV§.removeEventListener(Event.COMPLETE,this.§_-0Bl§);
            this.§_-yV§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.§_-m5§();
         }
      }
      
      private function §_-m5§() : void
      {
         §_-s0§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§_-al§();
         var _loc2_:§_-0FF§ = §_-0FF§.§_-3S§;
         if(this.§_-yV§)
         {
            _loc2_ = this.§_-yV§.textureManager;
         }
         this.§_-Bw§ = §_-II§.§_-N8§(_loc1_,_loc2_);
         if(this.§_-Bw§)
         {
            AngryBirdsFP11.sUserProgress.§_-fc§(_loc1_);
            § in§.§_-Dc§.§_-Vf§(true);
            § in§.§_-Dc§.§_-TQ§(false);
            this.§_-Bw§.update(0);
            § in§.§_-Dc§.§_-LM§.addChild(this.§_-Bw§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§_-yV§)
         {
            this.§_-yV§.removeEventListener(Event.COMPLETE,this.§_-0Bl§);
            this.§_-yV§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§_-yV§)
         {
            this.§_-yV§ = § in§.§_-Dc§.§_-04t§;
         }
         if(§_-AY§.§_-un§)
         {
            §_-AY§.§_-un§.color = 0;
         }
         this.§_-hI§ = 0;
         this.§_-Qe§ = 0;
         §_-s0§.getItemByName("Button_Skip").setVisibility(false);
         §_-s0§.getItemByName("Button_Skip").mClip.alpha = this.§_-hI§;
         AngryBirdsFP11.§_-8§();
         this.§_-06t§ = false;
         §_-s0§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§_-al§();
         if(!this.§_-Ir§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §_-al§() : String
      {
         var _loc1_:String = LevelManager.§_-4w§;
         var _loc2_:String = LevelManager.§_-1a§().§_-gy§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = LevelManager.§_-HM§;
            _loc2_ = LevelManager.§_-1a§().§_-gy§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§_-Bw§)
         {
            § in§.§_-Dc§.§_-LM§.removeChild(this.§_-Bw§.sprite);
            this.§_-Bw§.dispose();
            this.§_-Bw§ = null;
         }
         if(this.§_-yV§)
         {
            this.§_-yV§.removeEventListener(Event.COMPLETE,this.§_-0Bl§);
            this.§_-yV§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         § in§.§_-Dc§.§_-TQ§(true);
         LevelManager.§_-4w§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§_-06t§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§_-07§.§_-0De§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§_-Qe§ > §_-cr§)
         {
            §_-s0§.getItemByName("Button_Skip").setVisibility(true);
            this.§_-hI§ += param1 / 1000;
            §_-s0§.getItemByName("Button_Skip").mClip.alpha = this.§_-hI§;
            if(this.§_-hI§ > 1)
            {
               this.§_-hI§ = 1;
            }
         }
         else
         {
            this.§_-Qe§ += param1;
         }
         if(this.§_-06t§)
         {
            this.end();
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         if(this.§_-Bw§ && !this.§_-Bw§.update(param1))
         {
            this.end();
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§_-Bw§ && this.§_-Bw§.§_-01k§ == §_-0BF§.§_-k5§)
         {
            §_-UO§.§_-yr§ = StateCutScene.§_-pk§;
            mNextState = §_-UO§.§_-pk§;
         }
         else if(this.§_-Bw§ && this.§_-Bw§.§_-01k§ == §_-0BF§.§_-rm§)
         {
            mNextState = §_-7A§.§_-pk§;
         }
         else
         {
            _loc1_ = LevelManager.§_-HM§;
            if(_loc1_)
            {
               mNextState = this.§_-03M§();
            }
            else
            {
               mNextState = §_-UO§.§_-pk§;
            }
         }
      }
      
      protected function §_-03M§() : String
      {
         return §_-MG§.§_-pk§;
      }
   }
}
