package §[!K§
{
   import §+I§.§9!%§;
   import §1"2§.§,!]§;
   import §<!<§.§%!#§;
   import com.AngryBirds.friendsbar.§2!h§;
   import flash.events.Event;
   
   public class §4T§ extends StateCutScene
   {
       
      
      public function §4T§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§9!%§.§ !W§ as § W§).§+"#§(§2!h§.§7f§);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = §#n§();
         §%!#§.§2!l§("cutscene-" + _loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §2&§.STATE_NAME;
         }
      }
   }
}
