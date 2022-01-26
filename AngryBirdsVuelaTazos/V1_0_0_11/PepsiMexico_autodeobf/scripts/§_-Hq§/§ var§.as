package §_-Hq§
{
   import §_-Ah§.§_-b§;
   import §_-TE§.§_-PN§;
   import §_-Y-§.§_-A5§;
   import §_-ZG§.§_-HK§;
   import §_-d5§.§_-6Y§;
   import §_-ez§.§_-8g§;
   import §_-hz§.§_-rI§;
   import §_-ic§.HighscoreSidebar;
   import flash.events.KeyboardEvent;
   
   public class § var§ extends §_-UR§
   {
       
      
      protected var §_-5R§:§_-rI§;
      
      protected var §_-uY§:Boolean = false;
      
      protected var §_-dN§:Boolean = false;
      
      public function § var§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-5R§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-A5§.§_-9-§ = false;
         §_-b§.§_-cK§.§_-uw§(true);
         §_-b§.§_-cK§.§_-j3§(true);
         if(this.§_-5R§ == null)
         {
            this.§_-5R§ = new §_-rI§(§_-b§.§_-cK§);
         }
         if(§_-b§.§_-cK§.§_-1a§ == 0)
         {
            this.levelStarted();
         }
         §_-03§.changeState(HighscoreSidebar.§_-JL§);
         §_-03§.showHighscores(§_-A5§.§_-KH§);
         §_-b§.§_-DZ§(this.§_-5R§);
         §_-b§.§_-cK§.§_-c§.§_-3x§();
         §_-6Y§.§_-7p§.§_-ej§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-uY§)
         {
            this.§_-uY§ = false;
            mNextState = §_-1F§.§_-dh§;
         }
         else
         {
            this.§_-5R§.update(param1);
            if(this.§_-5R§.§_-id§() || this.§_-dN§)
            {
               this.§_-dN§ = false;
               if(this.§_-5R§.§_-J5§ == §_-rI§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §_-A5§.§_-9-§ = true;
                  this.levelCompleted();
               }
               else if(this.§_-5R§.§_-J5§ == §_-rI§.§_-Lr§)
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
         §_-b§.§_-cK§.§_-c§.§_-o-§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §_-b§.§_-V7§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §_-b§.§_-V7§.keyUp(param1);
      }
      
      public function §_-hi§() : void
      {
         var _loc1_:Number = §_-b§.§_-cK§.camera.mManualScale - §_-8g§.§_-Z3§;
         var _loc2_:Number = (§_-8g§.§_-Hz§ - §_-8g§.§_-Z3§) / 2;
         if(_loc1_ > _loc2_)
         {
            §_-HK§.§_-RU§("Cursor_Zoom_Out");
         }
         else
         {
            §_-HK§.§_-RU§("Cursor_Zoom_In");
         }
      }
   }
}
