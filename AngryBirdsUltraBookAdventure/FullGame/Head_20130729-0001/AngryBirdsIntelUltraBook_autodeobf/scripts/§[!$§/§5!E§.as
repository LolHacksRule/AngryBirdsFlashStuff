package §[!$§
{
   import §0!Q§.UIEventListenerRovio;
   import §5=§.§9F§;
   import §7t§.StateCreditsNew;
   import §7t§.StateCutScene;
   import §?!Y§.§`S§;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.events.Event;
   
   public class §5!E§ extends StateCutScene
   {
       
      
      public function §5!E§(initState:Boolean = true, name:String = "StateCutScene")
      {
         super(initState,name);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§`S§.§=F§ as AngryBirdsUltraBook).§`<§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§.getItemByName("Button_Fullscreen").setVisibility(false);
         §`=§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(e:Event) : void
      {
         super.onCutSceneNotAvailable(e);
         var cutSceneName:String = §,k§();
         §9F§.§40§("cutscene-" + cutSceneName);
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
