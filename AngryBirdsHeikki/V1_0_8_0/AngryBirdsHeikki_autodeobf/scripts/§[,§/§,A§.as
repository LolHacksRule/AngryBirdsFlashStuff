package §[,§
{
   import §!a§.§&6§;
   import §#!T§.§&2§;
   import §0!&§.§@=§;
   import §7b§.§[7§;
   import flash.events.KeyboardEvent;
   
   public class §,A§ extends §<!Y§
   {
       
      
      protected var §+1§:§[7§;
      
      protected var §5!G§:Boolean = false;
      
      public function §,A§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§+1§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §@=§.§1!d§ = false;
         if(this.§+1§ == null)
         {
            this.§+1§ = new §[7§(§&2§.§4!1§);
         }
         if(§&2§.§4!1§.§?!!§ == 0)
         {
            this.levelStarted();
         }
         §&2§.§9![§(this.§+1§);
         §&2§.§4!1§.background.§7!Z§();
         §&2§.§4!1§.§5h§(true);
         §&2§.§4!1§.§-H§(true);
         §&2§.§,`§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§+1§.update(param1);
         if(this.§+1§.§5^§() || this.§5!G§)
         {
            this.§5!G§ = false;
            if(this.§+1§.§%!,§ == §[7§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §@=§.§1!d§ = true;
               this.levelCompleted();
            }
            else if(this.§+1§.§%!,§ == §[7§.§&!<§ && §&2§.§4!1§.slingshot.§^i§())
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
         §&2§.§4!1§.background.§!!^§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §&2§.§7=§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §&2§.§7=§.keyUp(param1);
      }
   }
}
