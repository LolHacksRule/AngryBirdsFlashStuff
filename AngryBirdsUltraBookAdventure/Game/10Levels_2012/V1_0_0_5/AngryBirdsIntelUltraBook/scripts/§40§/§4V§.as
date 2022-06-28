package §40§
{
   import §0X§.§'N§;
   import §9!5§.§!1§;
   import §9!5§.StateCutScene;
   import §9Y§.§6!8§;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.events.Event;
   import §true§.§ _§;
   
   public class §4V§ extends StateCutScene
   {
       
      
      public function §4V§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§9!O§);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
         §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = §5j§();
         §'N§.§`!]§("cutscene-" + _loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §!1§.§?h§;
         }
      }
   }
}
