package §!!+§
{
   import §0!d§.§8!r§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §9!G§.§>!n§;
   import §<8§.§7!n§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const §]"2§:String = "StateLevelPreview";
       
      
      private var §`E§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelPreview[0]);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         if(param3 is §8!r§)
         {
            if(param1 == §7!n§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §>!n§.§ V§();
            }
            else if(param1 == §7!n§.LISTENER_EVENT_MOUSE_UP)
            {
               §>!n§.§`!H§();
            }
         }
         switch(param2)
         {
            case "RESTART_LEVEL":
               §4!l§.§"l§(§]"2§);
               mNextState = §4!l§.§]"2§;
         }
      }
      
      override public function getVictoryState() : String
      {
         return §+c§.§]"2§;
      }
      
      override public function getLoserState() : String
      {
         return §7m§.§]"2§;
      }
   }
}
