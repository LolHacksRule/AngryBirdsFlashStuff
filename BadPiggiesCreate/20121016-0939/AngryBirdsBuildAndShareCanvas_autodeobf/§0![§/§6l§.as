package §0![§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §5!V§.§!w§;
   import §5"-§.§5y§;
   import §;'§.§`!V§;
   import §=!M§.§"o§;
   import flash.events.KeyboardEvent;
   
   public class §6l§ extends §5y§
   {
       
      
      protected var §-!K§:§`!V§;
      
      protected var §3"&§:Boolean = false;
      
      protected var §1!T§:Boolean = false;
      
      private var §<,§:Boolean = false;
      
      public function §6l§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§-!K§.init();
         this.§<,§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §3!w§.§6!"§ = false;
         §=!X§.§!'§.§;p§(true);
         §=!X§.§!'§.§'7§(true);
         §=!X§.resume();
         if(this.§-!K§ == null)
         {
            this.§-!K§ = this.§`!4§(§=!X§.§!'§);
         }
         if(§=!X§.§!'§.§," § == 0)
         {
            this.levelStarted();
         }
         §=!X§.§]T§(this.§-!K§);
         §=!X§.§!'§.background.§^!g§();
      }
      
      protected function §`!4§(param1:§!w§) : §`!V§
      {
         return new §`!V§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§3"&§)
         {
            this.§3"&§ = false;
            mNextState = §4g§.§'=§;
         }
         else
         {
            if(!§=!X§.isPaused)
            {
               this.§-!K§.update(param1);
            }
            if(this.§-!K§.§]e§() || this.§1!T§)
            {
               this.§1!T§ = false;
               if(this.§-!K§.§`""§ == §`!V§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§<,§)
                  {
                     this.§<,§ = true;
                     this.§9!m§();
                  }
                  mNextState = this.getVictoryState();
                  §3!w§.§6!"§ = true;
               }
               else if(this.§-!K§.§`""§ == §`!V§.§51§)
               {
                  this.§1p§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §1p§() : void
      {
         mNextState = this.getLoserState();
      }
      
      protected function §9!m§() : void
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
         if(§=!X§.§>3§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §=!X§.§!'§.§+j§();
                  break;
               case 66:
                  §=!X§.§!'§.§3O§();
            }
         }
         §=!X§.§#H§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §=!X§.§#H§.keyUp(param1);
      }
      
      public function § S§() : void
      {
         var _loc1_:Number = §=!X§.§!'§.camera.§0"'§ - §=!X§.§!'§.camera.§<O§;
         var _loc2_:Number = (§=!X§.§!'§.camera.§5!s§ - §=!X§.§!'§.camera.§<O§) / 2;
         if(_loc1_ > _loc2_)
         {
            §"o§.§^!+§("Cursor_Zoom_Out");
         }
         else
         {
            §"o§.§^!+§("Cursor_Zoom_In");
         }
      }
   }
}
