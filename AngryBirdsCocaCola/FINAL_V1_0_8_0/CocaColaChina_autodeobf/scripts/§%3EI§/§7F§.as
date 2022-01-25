package §>I§
{
   import § !C§.§6!W§;
   import §"m§.§3]§;
   import §%!^§.§"=§;
   import §0!b§.§#!=§;
   import §^=§.§,!X§;
   import flash.events.KeyboardEvent;
   
   public class §7F§ extends §for §
   {
       
      
      protected var §7!K§:§3]§;
      
      protected var §#m§:Boolean = false;
      
      public function §7F§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§7!K§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §"=§.§]m§ = false;
         if(this.§7!K§ == null)
         {
            this.§7!K§ = new §3]§(§#!=§.§&![§);
         }
         if(§#!=§.§&![§.§;!&§ == 0)
         {
            this.levelStarted();
         }
         §#!=§.§5!7§(this.§7!K§);
         §#!=§.§&![§.background.§8p§();
         §#!=§.§&![§.§[!&§(true);
         §#!=§.§&![§.§0!D§(true);
         §#!=§.§<A§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§7!K§.update(param1);
         if(this.§7!K§.§>!#§() || this.§#m§)
         {
            this.§#m§ = false;
            if(this.§7!K§.§;!#§ == §3]§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §"=§.§]m§ = true;
               this.levelCompleted();
            }
            else if(this.§7!K§.§;!#§ == §3]§.§6!I§)
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
         §#!=§.§&![§.background.§<Z§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §#!=§.§3!W§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §#!=§.§3!W§.keyUp(param1);
      }
      
      public function §1G§() : void
      {
         var _loc1_:Number = §#!=§.§&![§.camera.manualScale - §#!=§.§&![§.camera.§ x§;
         var _loc2_:Number = (§#!=§.§&![§.camera.§,!e§ - §#!=§.§&![§.camera.§ x§) / 2;
         if(_loc1_ > _loc2_)
         {
            §,!X§.§-C§("Cursor_Zoom_Out");
         }
         else
         {
            §,!X§.§-C§("Cursor_Zoom_In");
         }
      }
   }
}
