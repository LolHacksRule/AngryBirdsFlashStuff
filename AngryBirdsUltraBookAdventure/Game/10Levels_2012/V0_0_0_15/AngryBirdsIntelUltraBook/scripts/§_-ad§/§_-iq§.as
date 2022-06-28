package §_-ad§
{
   import §_-0BH§.§_-Hy§;
   import §_-0Dg§.§_-hi§;
   import §_-Ga§.LevelManager;
   import §_-TG§.§_-00u§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.events.KeyboardEvent;
   
   public class §_-iq§ extends §_-nG§
   {
       
      
      protected var §_-JC§:§_-hi§;
      
      protected var §_-06c§:Boolean = false;
      
      protected var §_-6j§:Boolean = false;
      
      private var §_-0CS§:Boolean = false;
      
      public function §_-iq§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-JC§.init();
         this.§_-0CS§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§_-PY§ = false;
         § in§.§_-Dc§.§_-Vf§(true);
         § in§.§_-Dc§.§_-TQ§(true);
         § in§.resume();
         if(this.§_-JC§ == null)
         {
            this.§_-JC§ = this.getGameLogicController(§ in§.§_-Dc§);
         }
         if(§ in§.§_-Dc§.§_-Dn§ == 0)
         {
            this.levelStarted();
         }
         § in§.setController(this.§_-JC§);
         § in§.§_-Dc§.background.§_-7k§();
      }
      
      protected function getGameLogicController(param1:§_-00u§) : §_-hi§
      {
         return new §_-hi§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-06c§)
         {
            this.§_-06c§ = false;
            mNextState = §_-08C§.§_-pk§;
         }
         else
         {
            if(!§ in§.isPaused)
            {
               this.§_-JC§.update(param1);
            }
            if(this.§_-JC§.§_-oH§() || this.§_-6j§)
            {
               this.§_-6j§ = false;
               if(this.§_-JC§.§_-Gx§ == §_-hi§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§_-0CS§)
                  {
                     this.§_-0CS§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§_-PY§ = true;
               }
               else if(this.§_-JC§.§_-Gx§ == §_-hi§.§_-013§)
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
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§ in§.§_-LI§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  § in§.§_-Dc§.§_-Fi§();
                  break;
               case 66:
                  § in§.§_-Dc§.§_-Lv§();
            }
         }
         § in§.§_-03s§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         § in§.§_-03s§.keyUp(param1);
      }
      
      public function §_-00d§() : void
      {
         var _loc1_:Number = § in§.§_-Dc§.camera.§_-kC§ - § in§.§_-Dc§.camera.§_-NK§;
         var _loc2_:Number = (§ in§.§_-Dc§.camera.§_-TL§ - § in§.§_-Dc§.camera.§_-NK§) / 2;
         if(_loc1_ > _loc2_)
         {
            §_-Hy§.§_-Ru§("Cursor_Zoom_Out");
         }
         else
         {
            §_-Hy§.§_-Ru§("Cursor_Zoom_In");
         }
      }
   }
}
