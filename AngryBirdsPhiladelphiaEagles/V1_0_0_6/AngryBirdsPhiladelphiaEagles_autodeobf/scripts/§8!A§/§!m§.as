package §8!A§
{
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §3!O§.§ !2§;
   import §3?§.§6+§;
   import §4!-§.§%o§;
   import §;!!§.§0H§;
   import flash.events.KeyboardEvent;
   
   public class §!m§ extends §0H§
   {
       
      
      protected var §;!M§:§6+§;
      
      protected var §#c§:Boolean = false;
      
      protected var §=! §:Boolean = false;
      
      private var §>7§:Boolean = false;
      
      public function §!m§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§;!M§.init();
         this.§>7§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §2h§.§4^§ = false;
         §[F§.§9u§.§#Q§(true);
         §[F§.§9u§.§@!4§(true);
         §[F§.resume();
         if(this.§;!M§ == null)
         {
            this.§;!M§ = this.getGameLogicController(§[F§.§9u§);
         }
         if(§[F§.§9u§.§#g§ == 0)
         {
            this.levelStarted();
         }
         §[F§.§0D§(this.§;!M§);
         §[F§.§9u§.background.§2!3§();
      }
      
      protected function getGameLogicController(param1:§%o§) : §6+§
      {
         return new §6+§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§#c§)
         {
            this.§#c§ = false;
            mNextState = §8#§.§2`§;
         }
         else
         {
            if(!§[F§.isPaused)
            {
               this.§;!M§.update(param1);
            }
            if(this.§;!M§.§6!P§() || this.§=! §)
            {
               this.§=! § = false;
               if(this.§;!M§.§6z§ == §6+§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§>7§)
                  {
                     this.§>7§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §2h§.§4^§ = true;
               }
               else if(this.§;!M§.§6z§ == §6+§.§!!6§)
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
         if(§[F§.§9!-§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §[F§.§9u§.§?'§();
                  break;
               case 66:
                  §[F§.§9u§.§6P§();
            }
         }
         §[F§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §[F§.controller.keyUp(param1);
      }
      
      public function §21§() : void
      {
         var _loc1_:Number = §[F§.§9u§.camera.§+i§ - §[F§.§9u§.camera.§7#§;
         var _loc2_:Number = (§[F§.§9u§.camera.§?$§ - §[F§.§9u§.camera.§7#§) / 2;
         if(_loc1_ > _loc2_)
         {
            § !2§.§&!§("Cursor_Zoom_Out");
         }
         else
         {
            § !2§.§&!§("Cursor_Zoom_In");
         }
      }
   }
}
