package §0o§
{
   import § !k§.§6!5§;
   import § !k§.StateCutScene;
   import §&!h§.§]V§;
   import §5i§.§4!]§;
   import §=R§.§7!"§;
   import com.angrybirds.friendsbar.§&E§;
   import flash.events.Event;
   
   public class §#!H§ extends StateCutScene
   {
       
      
      public function §#!H§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§"!0§);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
         §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = §-!-§();
         §]V§.§4!^§("cutscene-" + _loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §6!5§.§3F§;
         }
      }
   }
}
