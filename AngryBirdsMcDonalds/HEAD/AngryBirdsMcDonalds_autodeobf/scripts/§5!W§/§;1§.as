package §5!W§
{
   import §,!H§.§ for§;
   import §,4§.§;_§;
   import §-h§.§ use§;
   import §7F§.§2M§;
   import flash.events.KeyboardEvent;
   
   public class §;1§ extends §`X§
   {
       
      
      protected var §=S§:§ use§;
      
      protected var §#!Y§:Boolean = false;
      
      public function §;1§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§=S§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §;_§.§#!e§ = false;
         if(this.§=S§ == null)
         {
            this.§=S§ = new § use§(§2M§.§1?§);
         }
         if(§2M§.§1?§.§>b§ == 0)
         {
            this.levelStarted();
         }
         §2M§.setController(this.§=S§);
         §2M§.§1?§.background.§@!]§();
         §2M§.§1?§.§9!=§(true);
         §2M§.§1?§.§4<§(true);
         §2M§.§3!M§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § for§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§=S§.update(param1);
         if(this.§=S§.§-p§() || this.§#!Y§)
         {
            this.§#!Y§ = false;
            if(this.§=S§.§"§ == § use§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §;_§.§#!e§ = true;
               this.levelCompleted();
            }
            else if(this.§=S§.§"§ == § use§.§'k§ && §2M§.§1?§.slingshot.§<k§())
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
         §2M§.§1?§.background.§9x§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §2M§.§`r§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §2M§.§`r§.keyUp(param1);
      }
   }
}
