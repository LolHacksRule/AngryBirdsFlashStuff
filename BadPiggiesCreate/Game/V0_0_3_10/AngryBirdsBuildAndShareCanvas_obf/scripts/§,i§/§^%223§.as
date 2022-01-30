package §,i§
{
   import §,y§.§8n§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!s§.§%I§;
   import §7M§.§"?§;
   import §9!G§.§>!n§;
   import flash.events.KeyboardEvent;
   
   public class §^"3§ extends §0!K§
   {
       
      
      protected var §]c§:§8n§;
      
      protected var §+"0§:Boolean = false;
      
      protected var §+!-§:Boolean = false;
      
      private var §9E§:Boolean = false;
      
      public function §^"3§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§]c§.init();
         this.§9E§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §"?§.§"!6§ = false;
         §"!V§.§!j§.§9!q§(true);
         §"!V§.§!j§.§-6§(true);
         §"!V§.resume();
         if(this.§]c§ == null)
         {
            this.§]c§ = this.§,K§(§"!V§.§!j§);
         }
         if(§"!V§.§!j§.§5a§ == 0)
         {
            this.levelStarted();
         }
         §"!V§.§`!G§(this.§]c§);
         §"!V§.§!j§.background.§%!R§();
      }
      
      protected function §,K§(param1:§%I§) : §8n§
      {
         return new §8n§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§+"0§)
         {
            this.§+"0§ = false;
            mNextState = §9"+§.§]"2§;
         }
         else
         {
            if(!§"!V§.isPaused)
            {
               this.§]c§.update(param1);
            }
            if(this.§]c§.§;!F§() || this.§+!-§)
            {
               this.§+!-§ = false;
               if(this.§]c§.§"!e§ == §8n§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§9E§)
                  {
                     this.§9E§ = true;
                     this.§1!N§();
                  }
                  mNextState = this.getVictoryState();
                  §"?§.§"!6§ = true;
               }
               else if(this.§]c§.§"!e§ == §8n§.§1!v§)
               {
                  mNextState = this.getLoserState();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §1!N§() : void
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
         if(§"!V§.§2!_§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §"!V§.§!j§.§[!J§();
                  break;
               case 66:
                  §"!V§.§!j§.§>!6§();
            }
         }
         §"!V§.§ !o§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §"!V§.§ !o§.keyUp(param1);
      }
      
      public function §4!G§() : void
      {
         var _loc1_:Number = §"!V§.§!j§.camera.§ !y§ - §"!V§.§!j§.camera.§ !=§;
         var _loc2_:Number = (§"!V§.§!j§.camera.§"!y§ - §"!V§.§!j§.camera.§ !=§) / 2;
         if(_loc1_ > _loc2_)
         {
            §>!n§.§&!$§("Cursor_Zoom_Out");
         }
         else
         {
            §>!n§.§&!$§("Cursor_Zoom_In");
         }
      }
   }
}
