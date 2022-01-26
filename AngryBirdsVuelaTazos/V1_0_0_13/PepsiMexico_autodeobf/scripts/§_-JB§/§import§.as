package §_-JB§
{
   import §_-7§.§_-ph§;
   import §_-FQ§.§_-if§;
   import §_-JR§.§_-yh§;
   import §_-LM§.§_-wf§;
   import §_-PS§.§_-Xz§;
   import §_-cu§.§_-UO§;
   import §_-ex§.§_-Mh§;
   import §_-m7§.HighscoreSidebar;
   import flash.events.KeyboardEvent;
   
   public class §import§ extends §_-bH§
   {
       
      
      protected var §_-q1§:§_-wf§;
      
      protected var §_-c0§:Boolean = false;
      
      protected var §_-sa§:Boolean = false;
      
      public function §import§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-q1§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-Xz§.§_-Og§ = false;
         §_-ph§.§_-Tw§.§_-G9§(true);
         §_-ph§.§_-Tw§.§_-Hb§(true);
         if(this.§_-q1§ == null)
         {
            this.§_-q1§ = new §_-wf§(§_-ph§.§_-Tw§);
         }
         if(§_-ph§.§_-Tw§.§_-kr§ == 0)
         {
            this.levelStarted();
         }
         §_-dM§.changeState(HighscoreSidebar.§_-Zk§);
         §_-dM§.showHighscores(§_-Xz§.§_-AP§);
         §_-ph§.§_-0g§(this.§_-q1§);
         §_-ph§.§_-Tw§.§_-3z§.§_-KB§();
         §_-yh§.§_-hY§.§_-xg§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-c0§)
         {
            this.§_-c0§ = false;
            mNextState = §_-sH§.§_-1h§;
         }
         else
         {
            this.§_-q1§.update(param1);
            if(this.§_-q1§.§_-Pl§() || this.§_-sa§)
            {
               this.§_-sa§ = false;
               if(this.§_-q1§.§_-NW§ == §_-wf§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §_-Xz§.§_-Og§ = true;
                  this.levelCompleted();
               }
               else if(this.§_-q1§.§_-NW§ == §_-wf§.§_-qm§)
               {
                  mNextState = this.getLoserState();
               }
            }
         }
         return _loc2_;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryState() : String
      {
         return null;
      }
      
      public function getLoserState() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-ph§.§_-Tw§.§_-3z§.§try §();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §_-ph§.§_-eR§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §_-ph§.§_-eR§.keyUp(param1);
      }
      
      public function §_-SU§() : void
      {
         var _loc1_:Number = §_-ph§.§_-Tw§.camera.mManualScale - §_-if§.§_-kh§;
         var _loc2_:Number = (§_-if§.§_-8K§ - §_-if§.§_-kh§) / 2;
         if(_loc1_ > _loc2_)
         {
            §_-Mh§.§_-Tf§("Cursor_Zoom_Out");
         }
         else
         {
            §_-Mh§.§_-Tf§("Cursor_Zoom_In");
         }
      }
   }
}
