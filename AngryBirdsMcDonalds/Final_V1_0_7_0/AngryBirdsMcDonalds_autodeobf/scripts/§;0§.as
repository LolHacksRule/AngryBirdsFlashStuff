package
{
   import §%!5§.§7;§;
   import §'!N§.§8!C§;
   import §-!F§.§2[§;
   import §7E§.§ =§;
   import flash.events.KeyboardEvent;
   
   public class §;0§ extends §2'§
   {
       
      
      protected var § @§:§8!C§;
      
      protected var §!!l§:Boolean = false;
      
      public function §;0§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§ @§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §2[§.§=@§ = false;
         if(this.§ @§ == null)
         {
            this.§ @§ = new §8!C§(§7;§.§1h§);
         }
         if(§7;§.§1h§.§,!V§ == 0)
         {
            this.levelStarted();
         }
         §7;§.setController(this.§ @§);
         §7;§.§1h§.background.§4!c§();
         §7;§.§1h§.§4!@§(true);
         §7;§.§1h§.§^p§(true);
         §7;§.§!!F§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § =§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§ @§.update(param1);
         if(this.§ @§.§ &§() || this.§!!l§)
         {
            this.§!!l§ = false;
            if(this.§ @§.§`!i§ == §8!C§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §2[§.§=@§ = true;
               this.levelCompleted();
            }
            else if(this.§ @§.§`!i§ == §8!C§.§ !?§ && §7;§.§1h§.slingshot.§+!5§())
            {
               mNextState = this.getLoserState();
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
         §7;§.§1h§.background.§?X§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §7;§.§5F§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §7;§.§5F§.keyUp(param1);
      }
   }
}
