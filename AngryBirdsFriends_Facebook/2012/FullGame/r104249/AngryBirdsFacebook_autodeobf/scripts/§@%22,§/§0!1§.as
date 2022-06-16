package §@",§
{
   import §%!'§.§"!e§;
   import §%;§.§7!H§;
   import §+!F§.§1!D§;
   import §3D§.§%!x§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §>s§.§+m§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §0!1§ extends StateCutScene
   {
       
      
      private var §8"F§:Loader;
      
      public function §0!1§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§&2§.§5!k§ as §,"I§).§'!e§(§=!7§.§?J§);
         if(LevelManager.§`-§ == "2000-75" && !§>k§)
         {
            §2!I§(true);
         }
         §2!K§.getItemByName("Button_Skip").setVisibility(!§>k§);
         §2!K§.getItemByName("Button_Close").setVisibility(§>k§);
         §2!K§.getItemByName("Button_Prev1").setVisibility(§>k§ && §7!H§.§ '§(§%L§ - 1));
         §2!K§.getItemByName("Button_Next1").setVisibility(§>k§ && §7!H§.§ '§(§%L§ + 1));
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = §%n§();
         §"!e§.§2"8§("cutscene-" + _loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §`f§.STATE_NAME;
               §2!I§(false);
               break;
            case "CLOSE_BUTTON":
               mNextState = §7!H§.STATE_NAME;
               §2!I§(false);
               break;
            case "PREVIOUS_CUTSCENE":
               §7!H§.§6`§(§%L§ - 1);
               break;
            case "NEXT_CUTSCENE":
               §7!H§.§6`§(§%L§ + 1);
         }
      }
      
      override protected function startCutScene() : void
      {
         §2!K§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = "cutscene_" + §%n§();
         var _loc2_:ByteArray = §%!x§.§`!9§(_loc1_);
         if(_loc2_)
         {
            §1!D§.§7!T§.color = 0;
            §&2§.§],§.§`!I§(false);
            §&2§.§],§.§>!&§(false);
            this.§8"F§ = new Loader();
            this.§8"F§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §2!K§.getItemByName("MovieClip_Cutscene2").setVisibility(true);
            §2!K§.getItemByName("MovieClip_Cutscene2").mClip.addChild(this.§8"F§);
         }
         else
         {
            §2!K§.getItemByName("MovieClip_Cutscene2").setVisibility(false);
            super.startCutScene();
         }
      }
      
      override public function deActivate() : void
      {
         §+m§.§5!P§();
         if(this.§8"F§)
         {
            §2!K§.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.§8"F§);
            this.§8"F§.unloadAndStop();
            this.§8"F§ = null;
         }
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§ !s§)
         {
            § !s§.update(0);
         }
      }
   }
}
