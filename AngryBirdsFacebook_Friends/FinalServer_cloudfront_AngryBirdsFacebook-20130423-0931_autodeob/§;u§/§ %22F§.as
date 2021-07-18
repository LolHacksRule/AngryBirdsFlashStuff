package §;u§
{
   import §"a§.§!"J§;
   import §%i§.§7"0§;
   import §1!t§.§""B§;
   import §4;§.§=!^§;
   import §8!^§.§,p§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§@q§;
   import §@!"§.§?l§;
   import com.AngryBirds.friendsbar.§]a§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class § "F§ extends StateCutScene
   {
       
      
      private var §]!i§:Loader;
      
      public function § "F§(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§!!;§);
         if(LevelManager.§ T§ == "2000-75" && !§@"+§)
         {
            §@"T§(true);
         }
         if(LevelManager.§&"V§ == "4001-15")
         {
            (§2"@§.getItemByName("Button_Skip") as §7"0§).§[o§(§""B§.LISTENER_EVENT_MOUSE_UP,"SHOWCREDITS");
         }
         else
         {
            (§2"@§.getItemByName("Button_Skip") as §7"0§).§[o§(§""B§.LISTENER_EVENT_MOUSE_UP,"SKIP");
         }
         §2"@§.getItemByName("Button_Skip").setVisibility(!§@"+§);
         §2"@§.getItemByName("Button_Close").setVisibility(§@"+§);
         §2"@§.getItemByName("Button_Prev1").setVisibility(§@"+§ && §,p§.§'"&§(§"d§ - 1));
         §2"@§.getItemByName("Button_Next1").setVisibility(§@"+§ && §,p§.§'"&§(§"d§ + 1));
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = §5!e§();
         §@q§.§<d§("cutscene-" + _loc2_);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SHOWCREDITS":
               mNextState = §&"[§.STATE_NAME;
               §@"T§(false);
               break;
            case "CLOSE_BUTTON":
               mNextState = §,p§.STATE_NAME;
               §@"T§(false);
               break;
            case "PREVIOUS_CUTSCENE":
               §,p§.§6"8§(§"d§ - 1);
               break;
            case "NEXT_CUTSCENE":
               §,p§.§6"8§(§"d§ + 1);
         }
      }
      
      override protected function startCutScene() : void
      {
         §2"@§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = "cutscene_" + §5!e§();
         var _loc2_:ByteArray = §=!^§.§#A§(_loc1_);
         if(_loc2_)
         {
            §!"J§.§1&§.color = 0;
            §?l§.§'h§.§#"[§(false);
            §?l§.§'h§.§%l§(false);
            this.§]!i§ = new Loader();
            this.§]!i§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §2"@§.getItemByName("MovieClip_Cutscene2").setVisibility(true);
            §2"@§.getItemByName("MovieClip_Cutscene2").mClip.addChild(this.§]!i§);
            if(_loc1_.toLocaleLowerCase().indexOf("intro") != -1)
            {
               §@"M§.§3"C§("birds_intro",§@"M§.§0+§,0,1);
            }
            else if(_loc1_.toLocaleLowerCase().indexOf("outro") != -1 || _loc1_.toLocaleLowerCase().indexOf("complete") != -1)
            {
               §@"M§.§3"C§("birds_outro",§@"M§.§0+§,0,1);
            }
         }
         else
         {
            §2"@§.getItemByName("MovieClip_Cutscene2").setVisibility(false);
            super.startCutScene();
         }
      }
      
      override public function deActivate() : void
      {
         §@"M§.§]!n§();
         if(this.§]!i§)
         {
            §2"@§.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.§]!i§);
            this.§]!i§.unloadAndStop();
            this.§]!i§ = null;
         }
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§0!1§)
         {
            §0!1§.update(0);
         }
      }
   }
}
