package §_-T-§
{
   import §_-MN§.§_-wU§;
   import §_-ad§.StateCutScene;
   import §_-ad§.§_-7A§;
   import §_-eS§.§_-OY§;
   import §_-qO§.§ in§;
   import com.angrybirds.friendsbar.§_-ri§;
   import flash.events.Event;
   
   public class §_-ss§ extends StateCutScene
   {
       
      
      public function §_-ss§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.§_-02b§);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
         §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = §_-al§();
         §_-OY§.§_-ta§("cutscene-" + _loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §_-7A§.§_-pk§;
         }
      }
   }
}
