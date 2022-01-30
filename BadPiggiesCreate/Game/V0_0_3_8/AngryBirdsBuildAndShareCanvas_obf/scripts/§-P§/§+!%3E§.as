package §-P§
{
   import §%h§.§5X§;
   import §'!O§.§[!m§;
   import §4!S§.§06§;
   import §4u§.§9<§;
   import §>w§.§4E§;
   import §`%§.§8!0§;
   import flash.events.KeyboardEvent;
   
   public class §+!>§ extends §4E§
   {
       
      
      protected var §8",§:§06§;
      
      protected var §;1§:Boolean = false;
      
      protected var §7!k§:Boolean = false;
      
      private var §&!w§:Boolean = false;
      
      public function §+!>§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§8",§.init();
         this.§&!w§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[!m§.§&E§ = false;
         §8!0§.§?2§.§<;§(true);
         §8!0§.§?2§.§;!0§(true);
         §8!0§.resume();
         if(this.§8",§ == null)
         {
            this.§8",§ = this.§ !C§(§8!0§.§?2§);
         }
         if(§8!0§.§?2§.§'§ == 0)
         {
            this.levelStarted();
         }
         §8!0§.§#8§(this.§8",§);
         §8!0§.§?2§.background.§3!8§();
      }
      
      protected function § !C§(param1:§5X§) : §06§
      {
         return new §06§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§;1§)
         {
            this.§;1§ = false;
            mNextState = §%p§.§#!w§;
         }
         else
         {
            if(!§8!0§.isPaused)
            {
               this.§8",§.update(param1);
            }
            if(this.§8",§.§?"4§() || this.§7!k§)
            {
               this.§7!k§ = false;
               if(this.§8",§.§8!^§ == §06§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§&!w§)
                  {
                     this.§&!w§ = true;
                     this.§@!v§();
                  }
                  mNextState = this.getVictoryState();
                  §[!m§.§&E§ = true;
               }
               else if(this.§8",§.§8!^§ == §06§.§;B§)
               {
                  mNextState = this.getLoserState();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §@!v§() : void
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
         if(§8!0§.§`"&§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §8!0§.§?2§.§@!5§();
                  break;
               case 66:
                  §8!0§.§?2§.§[!R§();
            }
         }
         §8!0§.§00§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §8!0§.§00§.keyUp(param1);
      }
      
      public function §9S§() : void
      {
         var _loc1_:Number = §8!0§.§?2§.camera.§1!B§ - §8!0§.§?2§.camera.§3S§;
         var _loc2_:Number = (§8!0§.§?2§.camera.§'#§ - §8!0§.§?2§.camera.§3S§) / 2;
         if(_loc1_ > _loc2_)
         {
            §9<§.§^y§("Cursor_Zoom_Out");
         }
         else
         {
            §9<§.§^y§("Cursor_Zoom_In");
         }
      }
   }
}
