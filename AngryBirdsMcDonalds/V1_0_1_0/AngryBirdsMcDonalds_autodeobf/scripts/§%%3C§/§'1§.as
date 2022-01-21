package §%<§
{
   import §2o§.§<H§;
   import §?;§.§ !8§;
   import §^5§.§]!,§;
   import §`!d§.§7!§;
   import flash.events.KeyboardEvent;
   
   public class §'1§ extends §+V§
   {
       
      
      protected var §`8§:§ !8§;
      
      protected var §0c§:Boolean = false;
      
      public function §'1§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§`8§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §7!§.§>!k§ = false;
         if(this.§`8§ == null)
         {
            this.§`8§ = new § !8§(§<H§.§=3§);
         }
         if(§<H§.§=3§.§<"§ == 0)
         {
            this.levelStarted();
         }
         §<H§.setController(this.§`8§);
         §<H§.§=3§.background.§<M§();
         §<H§.§=3§.§&e§(true);
         §<H§.§=3§.§]!<§(true);
         §<H§.§!d§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §]!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§`8§.update(param1);
         if(this.§`8§.§?"§() || this.§0c§)
         {
            this.§0c§ = false;
            if(this.§`8§.§1!2§ == § !8§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §7!§.§>!k§ = true;
               this.levelCompleted();
            }
            else if(this.§`8§.§1!2§ == § !8§.§<!H§ && §<H§.§=3§.slingshot.§0'§())
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
         §<H§.§=3§.background.§,"§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §<H§.§ u§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §<H§.§ u§.keyUp(param1);
      }
   }
}
