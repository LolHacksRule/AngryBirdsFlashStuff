package §,!=§
{
   import §#v§.§#!?§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §+!u§.§%",§;
   import §0#d§.§<#u§;
   import §3!a§.§#!-§;
   import §3!a§.§["b§;
   import §3!a§.§`#K§;
   import §6"r§.§=O§;
   import §8§.§#$+§;
   import §>!#§.§,"W§;
   import §?§.§>"$§;
   import §^a§.Starling;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §!!]§ extends StateCutScene
   {
      
      public static const §,!B§:int = 16;
       
      
      private var §0`§:Loader;
      
      public function §!!]§(param1:§#!?§, param2:§]#[§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§#!k§);
         this.§%#&§("Button_Skip");
         this.§%#&§("Button_Prev1");
         this.§%#&§("Button_Next1");
         this.§%#&§("Button_Close");
      }
      
      protected function §%#&§(param1:String) : void
      {
         if(§!$§.getItemByName(param1))
         {
            §!$§.getItemByName(param1).setVisibility(false);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §,"W§.§?"L§("cutscene-" + _loc2_);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOWCREDITS":
               §7P§(§"$6§.STATE_NAME);
               break;
            case "CLOSE_BUTTON":
               §7P§(§%",§.STATE_NAME);
               break;
            case "SKIP":
               §#$+§.playSound("Menu_Confirm","ChannelBird",0,1);
         }
      }
      
      override protected function startCutScene() : void
      {
         §!$§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = getCutSceneName();
         var _loc2_:ByteArray = §["b§.§5!#§("cutscene_" + _loc1_);
         if(mLevelManager.previousLevel == "4001-15")
         {
            (§!$§.getItemByName("Button_Skip") as §=O§).§7!7§(§0!?§.LISTENER_EVENT_MOUSE_UP,"SHOWCREDITS");
         }
         else
         {
            (§!$§.getItemByName("Button_Skip") as §=O§).§7!7§(§0!?§.LISTENER_EVENT_MOUSE_UP,"SKIP");
         }
         if(_loc2_)
         {
            Starling.§<#`§.color = 0;
            §>"$§.§3#'§.§5'§(false);
            §>"$§.§3#'§.§;W§(false);
            this.§0`§ = new Loader();
            this.§0`§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §!$§.getItemByName("MovieClip_Cutscene2").setVisibility(true);
            §!$§.getItemByName("MovieClip_Cutscene2").mClip.addChild(this.§0`§);
            §!$§.getItemByName("Button_Prev1").setVisibility(false);
            §!$§.getItemByName("Button_Next1").setVisibility(false);
            if(_loc1_.toLocaleLowerCase().indexOf("intro") != -1)
            {
               this.playIntroSound();
            }
            else if(_loc1_.toLocaleLowerCase().indexOf("outro") != -1 || _loc1_.toLocaleLowerCase().indexOf("complete") != -1)
            {
               this.playOutroSound();
            }
            §>#>§ = new §#!-§([{
               "action":§`#K§.§]!E§,
               "time":§,!B§
            }],_loc1_);
            if(§["b§.§!!q§(_loc1_))
            {
               §>#>§.cutSceneType = §#!-§.§,#V§;
            }
         }
         else
         {
            §!$§.getItemByName("MovieClip_Cutscene2").setVisibility(false);
            §!$§.getItemByName("Button_Prev1").setVisibility(false);
            §!$§.getItemByName("Button_Next1").setVisibility(false);
            super.startCutScene();
         }
      }
      
      protected function playIntroSound() : void
      {
         §#$+§.playSound("birds_intro",§#$+§.§#"k§,0,1);
      }
      
      protected function playOutroSound() : void
      {
         §#$+§.playSound("birds_outro",§#$+§.§#"k§,0,1);
      }
      
      override public function deActivate() : void
      {
         §#$+§.§%!!§();
         if(this.§0`§)
         {
            §!$§.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.§0`§);
            this.§0`§.unloadAndStop();
            this.§0`§ = null;
         }
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§9"^§)
         {
            §9"^§.update(0);
         }
      }
   }
}
