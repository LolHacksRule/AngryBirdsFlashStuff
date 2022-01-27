package §9%§
{
   import §%"%§.§2Z§;
   import §&f§.§<!0§;
   import §1z§.§^!@§;
   import §3"#§.§`"8§;
   import §>"2§.§8k§;
   import §`!w§.§&!Q§;
   import flash.events.KeyboardEvent;
   
   public class §6"G§ extends §>!s§
   {
       
      
      protected var §2`§:§<!0§;
      
      protected var §]Z§:Boolean = false;
      
      private var §=!N§:Boolean = false;
      
      public function §6"G§(param1:§^!@§, param2:§2Z§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§2`§.init();
         this.§=!N§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8k§.§;!]§.§#5§(true);
         §8k§.§;!]§.§6n§(true);
         this.§@"&§();
         if(this.§2`§ == null)
         {
            this.§2`§ = this.getGameLogicController(§8k§.§;!]§);
         }
         if(§8k§.§;!]§.§#!s§ == 0)
         {
            this.levelStarted();
         }
         §8k§.§&x§(this.§2`§);
         §8k§.§;!]§.background.playAmbientSound();
      }
      
      protected function §@"&§() : void
      {
         §8k§.resume();
      }
      
      protected function getGameLogicController(param1:§`"8§) : §<!0§
      {
         return new §<!0§(param1,§#"=§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§8k§.isPaused)
         {
            this.§2`§.update(param1);
         }
         if(this.§2`§.§]!]§() || this.§]Z§)
         {
            this.§]Z§ = false;
            if(this.§2`§.§]k§ == §<!0§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§=!N§)
               {
                  this.§=!N§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  § !I§(this.getVictoryStateName());
               }
            }
            else if(this.§2`§.§]k§ == §<!0§.§@!'§)
            {
               if(this.§7Z§())
               {
                  § !I§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §7Z§() : Boolean
      {
         return true;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryStateName() : String
      {
         return null;
      }
      
      public function getLoserStateName() : String
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
         if(§8k§.§"",§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §8k§.§;!]§.§^u§();
                  break;
               case 66:
                  §8k§.§;!]§.§&!<§();
            }
         }
         §8k§.§0!Q§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §8k§.§0!Q§.keyUp(param1);
      }
      
      public function §;<§() : void
      {
         var _loc1_:Number = §8k§.§;!]§.camera.§^o§ - §8k§.§;!]§.camera.§?r§;
         var _loc2_:Number = (§8k§.§;!]§.camera.§!"=§ - §8k§.§;!]§.camera.§?r§) / 2;
         if(_loc1_ > _loc2_)
         {
            §&!Q§.§96§("Cursor_Zoom_Out");
         }
         else
         {
            §&!Q§.§96§("Cursor_Zoom_In");
         }
      }
   }
}
