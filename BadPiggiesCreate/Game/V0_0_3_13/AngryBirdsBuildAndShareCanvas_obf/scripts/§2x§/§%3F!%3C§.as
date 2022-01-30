package §2x§
{
   import §&W§.§1!w§;
   import §0s§.§8!z§;
   import §8!E§.§?!X§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>!?§.§=!?§;
   import flash.events.KeyboardEvent;
   
   public class §?!<§ extends §>!T§
   {
       
      
      protected var §6!f§:§=!?§;
      
      protected var § t§:Boolean = false;
      
      protected var §5<§:Boolean = false;
      
      private var §^'§:Boolean = false;
      
      public function §?!<§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§6!f§.init();
         this.§^'§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8!z§.§>!o§ = false;
         §5!U§.§,!E§.§=""§(true);
         §5!U§.§,!E§.§3!w§(true);
         §5!U§.resume();
         if(this.§6!f§ == null)
         {
            this.§6!f§ = this.§4!B§(§5!U§.§,!E§);
         }
         if(§5!U§.§,!E§.§;;§ == 0)
         {
            this.levelStarted();
         }
         §5!U§.§7!t§(this.§6!f§);
         §5!U§.§,!E§.background.§>n§();
      }
      
      protected function §4!B§(param1:§?!X§) : §=!?§
      {
         return new §=!?§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§ t§)
         {
            this.§ t§ = false;
            mNextState = §-"1§.§>H§;
         }
         else
         {
            if(!§5!U§.isPaused)
            {
               this.§6!f§.update(param1);
            }
            if(this.§6!f§.§@s§() || this.§5<§)
            {
               this.§5<§ = false;
               if(this.§6!f§.§""%§ == §=!?§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§^'§)
                  {
                     this.§^'§ = true;
                     this.§-!X§();
                  }
                  mNextState = this.getVictoryState();
                  §8!z§.§>!o§ = true;
               }
               else if(this.§6!f§.§""%§ == §=!?§.§1G§)
               {
                  this.§4!=§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §4!=§() : void
      {
         mNextState = this.getLoserState();
      }
      
      protected function §-!X§() : void
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
         if(§5!U§.§1D§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §5!U§.§,!E§.§1!S§();
                  break;
               case 66:
                  §5!U§.§,!E§.§4x§();
            }
         }
         §5!U§.§ !t§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §5!U§.§ !t§.keyUp(param1);
      }
      
      public function §<!%§() : void
      {
         var _loc1_:Number = §5!U§.§,!E§.camera.§`!5§ - §5!U§.§,!E§.camera.§@!x§;
         var _loc2_:Number = (§5!U§.§,!E§.camera.§try § - §5!U§.§,!E§.camera.§@!x§) / 2;
         if(_loc1_ > _loc2_)
         {
            §1!w§.§9",§("Cursor_Zoom_Out");
         }
         else
         {
            §1!w§.§9",§("Cursor_Zoom_In");
         }
      }
   }
}
