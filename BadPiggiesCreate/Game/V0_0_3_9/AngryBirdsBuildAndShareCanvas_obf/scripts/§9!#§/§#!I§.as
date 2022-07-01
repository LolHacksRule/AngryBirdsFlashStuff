package §9!#§
{
   import §"h§.§<"+§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §=b§.§-!K§;
   import §@!;§.§%"-§;
   import §]"&§.§4"6§;
   import flash.events.KeyboardEvent;
   
   public class §#!I§ extends §<"+§
   {
       
      
      protected var § !V§:§4"6§;
      
      protected var §2!<§:Boolean = false;
      
      protected var §!! §:Boolean = false;
      
      private var §`"2§:Boolean = false;
      
      public function §#!I§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§ !V§.init();
         this.§`"2§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §1!c§.§1!<§ = false;
         §%s§.§`!f§.§6M§(true);
         §%s§.§`!f§.§,v§(true);
         §%s§.resume();
         if(this.§ !V§ == null)
         {
            this.§ !V§ = this.§8!^§(§%s§.§`!f§);
         }
         if(§%s§.§`!f§.§[W§ == 0)
         {
            this.levelStarted();
         }
         §%s§.§4!-§(this.§ !V§);
         §%s§.§`!f§.background.§+!W§();
      }
      
      protected function §8!^§(param1:§-!K§) : §4"6§
      {
         return new §4"6§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§2!<§)
         {
            this.§2!<§ = false;
            mNextState = §<!P§.§8G§;
         }
         else
         {
            if(!§%s§.isPaused)
            {
               this.§ !V§.update(param1);
            }
            if(this.§ !V§.§@!r§() || this.§!! §)
            {
               this.§!! § = false;
               if(this.§ !V§.§3!U§ == §4"6§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§`"2§)
                  {
                     this.§`"2§ = true;
                     this.§8j§();
                  }
                  mNextState = this.getVictoryState();
                  §1!c§.§1!<§ = true;
               }
               else if(this.§ !V§.§3!U§ == §4"6§.§'b§)
               {
                  mNextState = this.getLoserState();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §8j§() : void
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
         if(§%s§.§3'§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §%s§.§`!f§.§`!=§();
                  break;
               case 66:
                  §%s§.§`!f§.§"G§();
            }
         }
         §%s§.§]x§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §%s§.§]x§.keyUp(param1);
      }
      
      public function §8§() : void
      {
         var _loc1_:Number = §%s§.§`!f§.camera.§4"8§ - §%s§.§`!f§.camera.§'!l§;
         var _loc2_:Number = (§%s§.§`!f§.camera.§-""§ - §%s§.§`!f§.camera.§'!l§) / 2;
         if(_loc1_ > _loc2_)
         {
            §%"-§.§+S§("Cursor_Zoom_Out");
         }
         else
         {
            §%"-§.§+S§("Cursor_Zoom_In");
         }
      }
   }
}
