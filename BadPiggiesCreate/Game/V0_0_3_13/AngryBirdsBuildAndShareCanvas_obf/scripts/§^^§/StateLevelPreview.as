package §^^§
{
   import § true§.§8K§;
   import §&W§.§1!w§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §4!j§.§0p§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const §>H§:String = "StateLevelPreview";
       
      
      private var §^!a§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelPreview[0]);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         if(param3 is §8K§)
         {
            if(param1 == §0p§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §1!w§.§@I§();
            }
            else if(param1 == §0p§.LISTENER_EVENT_MOUSE_UP)
            {
               §1!w§.§9i§();
            }
         }
         switch(param2)
         {
            case "RESTART_LEVEL":
               §1§.§+!u§(§>H§);
               mNextState = §1§.§>H§;
         }
      }
      
      override public function getVictoryState() : String
      {
         return §9!]§.§>H§;
      }
      
      override public function getLoserState() : String
      {
         return §;R§.§>H§;
      }
   }
}
