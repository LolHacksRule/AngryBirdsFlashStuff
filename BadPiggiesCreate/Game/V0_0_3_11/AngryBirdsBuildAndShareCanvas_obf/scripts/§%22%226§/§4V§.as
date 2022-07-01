package §""6§
{
   import §'x§.§?z§;
   import §+%§.§+"%§;
   import §1!v§.§@%§;
   import §2!O§.§,w§;
   import §62§.§3!N§;
   import §;X§.§ "2§;
   import flash.events.KeyboardEvent;
   
   public class §4V§ extends §,w§
   {
       
      
      protected var §`"5§:§3!N§;
      
      protected var § %§:Boolean = false;
      
      protected var § h§:Boolean = false;
      
      private var §1y§:Boolean = false;
      
      public function §4V§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§`"5§.init();
         this.§1y§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §+"%§.§>H§ = false;
         §?z§.§=7§.§,L§(true);
         §?z§.§=7§.§3!'§(true);
         §?z§.resume();
         if(this.§`"5§ == null)
         {
            this.§`"5§ = this.§&i§(§?z§.§=7§);
         }
         if(§?z§.§=7§.§8"§ == 0)
         {
            this.levelStarted();
         }
         §?z§.§5!R§(this.§`"5§);
         §?z§.§=7§.background.§"!y§();
      }
      
      protected function §&i§(param1:§@%§) : §3!N§
      {
         return new §3!N§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§ %§)
         {
            this.§ %§ = false;
            mNextState = §7h§.§^z§;
         }
         else
         {
            if(!§?z§.isPaused)
            {
               this.§`"5§.update(param1);
            }
            if(this.§`"5§.§!o§() || this.§ h§)
            {
               this.§ h§ = false;
               if(this.§`"5§.§3!b§ == §3!N§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§1y§)
                  {
                     this.§1y§ = true;
                     this.§6"4§();
                  }
                  mNextState = this.getVictoryState();
                  §+"%§.§>H§ = true;
               }
               else if(this.§`"5§.§3!b§ == §3!N§.§!!k§)
               {
                  mNextState = this.getLoserState();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §6"4§() : void
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
         if(§?z§.§8&§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §?z§.§=7§.§[!N§();
                  break;
               case 66:
                  §?z§.§=7§.§`!h§();
            }
         }
         §?z§.§6!#§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §?z§.§6!#§.keyUp(param1);
      }
      
      public function §-"%§() : void
      {
         var _loc1_:Number = §?z§.§=7§.camera.§&!Z§ - §?z§.§=7§.camera.§<!3§;
         var _loc2_:Number = (§?z§.§=7§.camera.§2!s§ - §?z§.§=7§.camera.§<!3§) / 2;
         if(_loc1_ > _loc2_)
         {
            § "2§.§0!n§("Cursor_Zoom_Out");
         }
         else
         {
            § "2§.§0!n§("Cursor_Zoom_In");
         }
      }
   }
}
