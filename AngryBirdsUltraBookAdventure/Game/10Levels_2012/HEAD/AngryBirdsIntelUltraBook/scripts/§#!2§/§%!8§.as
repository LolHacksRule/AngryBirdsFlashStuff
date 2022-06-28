package §#!2§
{
   import §-!>§.§4!T§;
   import §9!!§.§85§;
   import §9c§.StateCreditsNew;
   import §9c§.StateCutScene;
   import §>!<§.UIEventListenerRovio;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.events.Event;
   
   public class §%!8§ extends StateCutScene
   {
       
      
      public function §%!8§(initState:Boolean = true, name:String = "StateCutScene")
      {
         super(initState,name);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
         §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(e:Event) : void
      {
         super.onCutSceneNotAvailable(e);
         var cutSceneName:String = §6+§();
         §85§.§true §("cutscene-" + cutSceneName);
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
