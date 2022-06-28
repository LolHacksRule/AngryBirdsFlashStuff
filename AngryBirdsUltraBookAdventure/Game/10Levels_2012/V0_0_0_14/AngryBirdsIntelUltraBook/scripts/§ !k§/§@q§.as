package § !k§
{
   import §!!§.LevelManager;
   import §+&§.§-!7§;
   import §2!!§.§@!G§;
   import §5i§.§4!]§;
   import §6z§.§+!D§;
   import §8,§.§+_§;
   import flash.events.KeyboardEvent;
   
   public class §@q§ extends §+_§
   {
       
      
      protected var § !a§:§@!G§;
      
      protected var §#!o§:Boolean = false;
      
      protected var §"!'§:Boolean = false;
      
      private var §8!e§:Boolean = false;
      
      public function §@q§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§ !a§.init();
         this.§8!e§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§&!Q§ = false;
         §4!]§.§8C§.§1B§(true);
         §4!]§.§8C§.§+!b§(true);
         §4!]§.resume();
         if(this.§ !a§ == null)
         {
            this.§ !a§ = this.getGameLogicController(§4!]§.§8C§);
         }
         if(§4!]§.§8C§.§0!F§ == 0)
         {
            this.levelStarted();
         }
         §4!]§.setController(this.§ !a§);
         §4!]§.§8C§.background.§4!w§();
      }
      
      protected function getGameLogicController(param1:§-!7§) : §@!G§
      {
         return new §@!G§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§#!o§)
         {
            this.§#!o§ = false;
            mNextState = §=!#§.§3F§;
         }
         else
         {
            if(!§4!]§.isPaused)
            {
               this.§ !a§.update(param1);
            }
            if(this.§ !a§.§=!=§() || this.§"!'§)
            {
               this.§"!'§ = false;
               if(this.§ !a§.§'9§ == §@!G§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§8!e§)
                  {
                     this.§8!e§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§&!Q§ = true;
               }
               else if(this.§ !a§.§'9§ == §@!G§.§`§)
               {
                  mNextState = this.getLoserState();
               }
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
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§4!]§.§2!y§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §4!]§.§8C§.§%Q§();
                  break;
               case 66:
                  §4!]§.§8C§.§2!4§();
            }
         }
         §4!]§.§=`§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §4!]§.§=`§.keyUp(param1);
      }
      
      public function §#!k§() : void
      {
         var _loc1_:Number = §4!]§.§8C§.camera.§=!m§ - §4!]§.§8C§.camera.§!t§;
         var _loc2_:Number = (§4!]§.§8C§.camera.§3!O§ - §4!]§.§8C§.camera.§!t§) / 2;
         if(_loc1_ > _loc2_)
         {
            §+!D§.§,!=§("Cursor_Zoom_Out");
         }
         else
         {
            §+!D§.§,!=§("Cursor_Zoom_In");
         }
      }
   }
}
