package §^U§
{
   import §%!0§.§,4§;
   import §,P§.§'_§;
   import §6]§.§8!W§;
   import §;<§.§'B§;
   import §<i§.§`!r§;
   import §]§.§?h§;
   import flash.events.KeyboardEvent;
   
   public class §%"3§ extends §'B§
   {
       
      
      protected var §%!x§:§?h§;
      
      protected var §-"8§:Boolean = false;
      
      protected var §<s§:Boolean = false;
      
      private var §>!?§:Boolean = false;
      
      public function §%"3§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§%!x§.init();
         this.§>!?§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`!r§.§1&§ = false;
         §'_§.§=M§.§'"@§(true);
         §'_§.§=M§.§"!X§(true);
         §'_§.resume();
         if(this.§%!x§ == null)
         {
            this.§%!x§ = this.§1!]§(§'_§.§=M§);
         }
         if(§'_§.§=M§.§<I§ == 0)
         {
            this.levelStarted();
         }
         §'_§.§^`§(this.§%!x§);
         §'_§.§=M§.background.§@Q§();
      }
      
      protected function §1!]§(param1:§,4§) : §?h§
      {
         return new §?h§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§-"8§)
         {
            this.§-"8§ = false;
            mNextState = §@!y§.§%!Q§;
         }
         else
         {
            if(!§'_§.isPaused)
            {
               this.§%!x§.update(param1);
            }
            if(this.§%!x§.§>"3§() || this.§<s§)
            {
               this.§<s§ = false;
               if(this.§%!x§.§3!9§ == §?h§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§>!?§)
                  {
                     this.§>!?§ = true;
                     this.§[w§();
                  }
                  mNextState = this.getVictoryState();
                  §`!r§.§1&§ = true;
               }
               else if(this.§%!x§.§3!9§ == §?h§.§^!>§)
               {
                  this.§#e§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §#e§() : void
      {
         mNextState = this.getLoserState();
      }
      
      protected function §[w§() : void
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
         if(§'_§.§^q§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §'_§.§=M§.§7!E§();
                  break;
               case 66:
                  §'_§.§=M§.§@"%§();
            }
         }
         §'_§.§=R§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §'_§.§=R§.keyUp(param1);
      }
      
      public function §&"6§() : void
      {
         var _loc1_:Number = §'_§.§=M§.camera.§<>§ - §'_§.§=M§.camera.§,!l§;
         var _loc2_:Number = (§'_§.§=M§.camera.§1!Q§ - §'_§.§=M§.camera.§,!l§) / 2;
         if(_loc1_ > _loc2_)
         {
            §8!W§.§9i§("Cursor_Zoom_Out");
         }
         else
         {
            §8!W§.§9i§("Cursor_Zoom_In");
         }
      }
   }
}
