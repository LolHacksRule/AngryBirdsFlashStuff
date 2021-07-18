package §;b§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §6]§.§8!W§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const §%!Q§:String = "StateLevelPreview";
       
      
      private var §>"&§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelPreview[0]);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         if(param3 is §9"8§)
         {
            if(param1 == §0=§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §8!W§.§for§();
            }
            else if(param1 == §0=§.LISTENER_EVENT_MOUSE_UP)
            {
               §8!W§.§^!R§();
            }
         }
         switch(param2)
         {
            case "RESTART_LEVEL":
               §@"0§.§%P§(§%!Q§);
               mNextState = §@"0§.§%!Q§;
         }
      }
      
      override public function getVictoryState() : String
      {
         return §0C§.§%!Q§;
      }
      
      override public function getLoserState() : String
      {
         return §<b§.§%!Q§;
      }
   }
}
