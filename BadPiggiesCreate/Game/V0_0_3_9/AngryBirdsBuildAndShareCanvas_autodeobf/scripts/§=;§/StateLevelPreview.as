package §=;§
{
   import §&!&§.§7!8§;
   import §<!I§.§="5§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §@!;§.§%"-§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const §8G§:String = "StateLevelPreview";
       
      
      private var §8!&§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelPreview[0]);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         if(param3 is §="5§)
         {
            if(param1 == §7!8§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §%"-§.§in §();
            }
            else if(param1 == §7!8§.LISTENER_EVENT_MOUSE_UP)
            {
               §%"-§.§5!Q§();
            }
         }
         switch(param2)
         {
            case "RESTART_LEVEL":
               §=!"§.§2!2§(§8G§);
               mNextState = §=!"§.§8G§;
         }
      }
      
      override public function getVictoryState() : String
      {
         return §!g§.§8G§;
      }
      
      override public function getLoserState() : String
      {
         return §-1§.§8G§;
      }
   }
}
