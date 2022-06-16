package §7"@§
{
   import §2!i§.§'M§;
   import §<a§.§+!B§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import flash.events.Event;
   
   public class §-"2§ extends StateCutScene
   {
       
      
      public function §-"2§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§#6§.§ q§ as §3T§).§`!P§(§ K§.§2_§);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = §`"5§();
         §+!B§.§ P§("cutscene-" + _loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §9<§.STATE_NAME;
         }
      }
   }
}
