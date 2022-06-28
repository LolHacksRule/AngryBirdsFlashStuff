package §'!J§
{
   import §;H§.§9!3§;
   import §;H§.StateCutScene;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §]+§.§@!J§;
   import com.angrybirds.friendsbar.§1!R§;
   import flash.events.Event;
   
   public class §]d§ extends StateCutScene
   {
       
      
      public function §]d§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§^!c§.§2!w§ as §[!P§).§;e§(§1!R§.§5!8§);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
         §&!m§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = §@!P§();
         §@!J§.§4t§("cutscene-" + _loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §9!3§.§"!s§;
         }
      }
   }
}
