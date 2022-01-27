package §`!#§
{
   import §2!U§.§<&§;
   import §2!U§.StateCutScene;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §@!&§.§'!o§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.events.Event;
   
   public class §1!D§ extends StateCutScene
   {
       
      
      public function §1!D§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§6!;§);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
         §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = §8!Y§();
         §!!K§.§<J§("cutscene-" + _loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §<&§.§'!q§;
         }
      }
   }
}
