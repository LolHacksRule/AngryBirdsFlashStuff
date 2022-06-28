package §;m§
{
   import §+!?§.§"h§;
   import §3G§.§!E§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §=E§.§1!$§;
   import §>K§.§7R§;
   import flash.events.KeyboardEvent;
   
   public class §6!C§ extends §>3§
   {
       
      
      protected var §^R§:§1!$§;
      
      protected var §3,§:Boolean = false;
      
      protected var §^8§:Boolean = false;
      
      private var §-_§:Boolean = false;
      
      public function §6!C§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§^R§.init();
         this.§-_§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §59§.§]s§ = false;
         §"h§.§1C§.§]!!§(true);
         §"h§.§1C§.§`M§(true);
         §"h§.resume();
         if(this.§^R§ == null)
         {
            this.§^R§ = this.getGameLogicController(§"h§.§1C§);
         }
         if(§"h§.§1C§.§["§ == 0)
         {
            this.levelStarted();
         }
         §"h§.§;j§(this.§^R§);
         §"h§.§1C§.background.§>s§();
      }
      
      protected function getGameLogicController(param1:§!E§) : §1!$§
      {
         return new §1!$§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§3,§)
         {
            this.§3,§ = false;
            mNextState = §6e§.§-!A§;
         }
         else
         {
            if(!§"h§.isPaused)
            {
               this.§^R§.update(param1);
            }
            if(this.§^R§.§,Y§() || this.§^8§)
            {
               this.§^8§ = false;
               if(this.§^R§.§>!!§ == §1!$§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§-_§)
                  {
                     this.§-_§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §59§.§]s§ = true;
               }
               else if(this.§^R§.§>!!§ == §1!$§.§]J§)
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
         if(§"h§.§0b§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §"h§.§1C§.§%!1§();
                  break;
               case 66:
                  §"h§.§1C§.§&T§();
            }
         }
         §"h§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §"h§.controller.keyUp(param1);
      }
      
      public function §8!&§() : void
      {
         var _loc1_:Number = §"h§.§1C§.camera.§"Q§ - §"h§.§1C§.camera.§2!#§;
         var _loc2_:Number = (§"h§.§1C§.camera.§7y§ - §"h§.§1C§.camera.§2!#§) / 2;
         if(_loc1_ > _loc2_)
         {
            §7R§.§-"§("Cursor_Zoom_Out");
         }
         else
         {
            §7R§.§-"§("Cursor_Zoom_In");
         }
      }
   }
}
