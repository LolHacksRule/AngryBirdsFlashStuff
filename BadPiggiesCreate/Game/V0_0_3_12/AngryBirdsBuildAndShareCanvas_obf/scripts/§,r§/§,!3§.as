package §,r§
{
   import §"p§.§`!y§;
   import §%!,§.§,v§;
   import §&=§.§6p§;
   import §0E§.§-!F§;
   import §7"1§.§%W§;
   import §[B§.§"d§;
   import flash.events.KeyboardEvent;
   
   public class §,!3§ extends §,v§
   {
       
      
      protected var §<!#§:§6p§;
      
      protected var §[!§:Boolean = false;
      
      protected var §?!x§:Boolean = false;
      
      private var §+%§:Boolean = false;
      
      public function §,!3§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§<!#§.init();
         this.§+%§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §-!F§.§^!W§ = false;
         §%W§.§5"8§.§'N§(true);
         §%W§.§5"8§.§[!g§(true);
         §%W§.resume();
         if(this.§<!#§ == null)
         {
            this.§<!#§ = this.§!!^§(§%W§.§5"8§);
         }
         if(§%W§.§5"8§.§5!x§ == 0)
         {
            this.levelStarted();
         }
         §%W§.§92§(this.§<!#§);
         §%W§.§5"8§.background.§78§();
      }
      
      protected function §!!^§(param1:§"d§) : §6p§
      {
         return new §6p§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§[!§)
         {
            this.§[!§ = false;
            mNextState = §8!%§.§8n§;
         }
         else
         {
            if(!§%W§.isPaused)
            {
               this.§<!#§.update(param1);
            }
            if(this.§<!#§.§1"$§() || this.§?!x§)
            {
               this.§?!x§ = false;
               if(this.§<!#§.§3z§ == §6p§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§+%§)
                  {
                     this.§+%§ = true;
                     this.§8!X§();
                  }
                  mNextState = this.getVictoryState();
                  §-!F§.§^!W§ = true;
               }
               else if(this.§<!#§.§3z§ == §6p§.§#H§)
               {
                  this.§1!W§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §1!W§() : void
      {
         mNextState = this.getLoserState();
      }
      
      protected function §8!X§() : void
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
         if(§%W§.§;[§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §%W§.§5"8§.§+"6§();
                  break;
               case 66:
                  §%W§.§5"8§.§5N§();
            }
         }
         §%W§.§6h§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §%W§.§6h§.keyUp(param1);
      }
      
      public function §,!%§() : void
      {
         var _loc1_:Number = §%W§.§5"8§.camera.§?h§ - §%W§.§5"8§.camera.§`!I§;
         var _loc2_:Number = (§%W§.§5"8§.camera.§=!3§ - §%W§.§5"8§.camera.§`!I§) / 2;
         if(_loc1_ > _loc2_)
         {
            §`!y§.§<^§("Cursor_Zoom_Out");
         }
         else
         {
            §`!y§.§<^§("Cursor_Zoom_In");
         }
      }
   }
}
