package § J§
{
   import §+!d§.§6=§;
   import §;!A§.§2v§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §;X§.§ "2§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const §^z§:String = "StateLevelPreview";
       
      
      private var §%!§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelPreview[0]);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         if(param3 is §2v§)
         {
            if(param1 == §6=§.LISTENER_EVENT_MOUSE_DOWN)
            {
               § "2§.§=i§();
            }
            else if(param1 == §6=§.LISTENER_EVENT_MOUSE_UP)
            {
               § "2§.§'9§();
            }
         }
         switch(param2)
         {
            case "RESTART_LEVEL":
               §6"6§.§0!f§(§^z§);
               mNextState = §6"6§.§^z§;
         }
      }
      
      override public function getVictoryState() : String
      {
         return §38§.§^z§;
      }
      
      override public function getLoserState() : String
      {
         return §=&§.§^z§;
      }
   }
}
