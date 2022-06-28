package §@z§
{
   import § D§.§]!B§;
   import §7p§.§+!N§;
   import §<!S§.StateCreditsNew;
   import §<!S§.StateCutScene;
   import §>!-§.UIEventListenerRovio;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.events.Event;
   
   public class §5n§ extends StateCutScene
   {
       
      
      public function §5n§(initState:Boolean = true, name:String = "StateCutScene")
      {
         super(initState,name);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
         §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(e:Event) : void
      {
         super.onCutSceneNotAvailable(e);
         var cutSceneName:String = §0n§();
         §+!N§.§4!-§("cutscene-" + cutSceneName);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.uiInteractionHandler(eventIndex,eventName,component);
         switch(eventName)
         {
            case "showCredits":
               mNextState = StateCreditsNew.STATE_NAME;
               trace("Really going to credits screen");
         }
      }
   }
}
