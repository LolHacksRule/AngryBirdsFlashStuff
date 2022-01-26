package §_-8§
{
   import §_-5Y§.§_-vn§;
   import §_-Eo§.§_-Wt§;
   import §_-Kb§.§_-pJ§;
   import §_-Kn§.HighscoreSidebar;
   import §_-M0§.§_-u4§;
   import §_-fI§.§_-BI§;
   import §_-qT§.§_-O5§;
   import §_-uh§.§_-HB§;
   import flash.events.KeyboardEvent;
   
   public class §_-26§ extends §_-1f§
   {
       
      
      protected var §_-UN§:§_-pJ§;
      
      protected var §_-fW§:Boolean = false;
      
      protected var §_-rE§:Boolean = false;
      
      public function §_-26§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-UN§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-HB§.§_-kO§ = false;
         §_-u4§.§_-40§.§_-AB§(true);
         §_-u4§.§_-40§.§_-rt§(true);
         if(this.§_-UN§ == null)
         {
            this.§_-UN§ = new §_-pJ§(§_-u4§.§_-40§);
         }
         if(§_-u4§.§_-40§.§_-XL§ == 0)
         {
            this.levelStarted();
         }
         §_-5D§.changeState(HighscoreSidebar.§_-Po§);
         §_-5D§.showHighscores(§_-HB§.§_-Z-§);
         §_-u4§.§_-Ib§(this.§_-UN§);
         §_-u4§.§_-40§.background.§_-ia§();
         §_-BI§.§_-CE§.§_-9m§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-fW§)
         {
            this.§_-fW§ = false;
            mNextState = §_-1V§.§_-7m§;
         }
         else
         {
            this.§_-UN§.update(param1);
            if(this.§_-UN§.§_-Kq§() || this.§_-rE§)
            {
               this.§_-rE§ = false;
               if(this.§_-UN§.§_-oi§ == §_-pJ§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §_-HB§.§_-kO§ = true;
                  this.levelCompleted();
               }
               else if(this.§_-UN§.§_-oi§ == §_-pJ§.§_-ss§)
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
         §_-u4§.§_-40§.background.§_-Ws§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §_-u4§.§_-FQ§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §_-u4§.§_-FQ§.keyUp(param1);
      }
      
      public function §_-F-§() : void
      {
         var _loc1_:Number = §_-u4§.§_-40§.camera.mManualScale - §_-vn§.§_-yD§;
         var _loc2_:Number = (§_-vn§.§_-2F§ - §_-vn§.§_-yD§) / 2;
         if(_loc1_ > _loc2_)
         {
            §_-Wt§.§_-0H§("Cursor_Zoom_Out");
         }
         else
         {
            §_-Wt§.§_-0H§("Cursor_Zoom_In");
         }
      }
   }
}
