package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import §&§.Starling;
   import §+!n§.§+!p§;
   import §+_§.§=$C§;
   import §+_§.§>$8§;
   import §+_§.§^"Q§;
   import §2$;§.§;!b§;
   import §2E§.§'@§;
   import §<8§.§8!g§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §catch§.§ !M§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §3#P§ extends StateCutScene
   {
      
      public static const §6!W§:int = 16;
       
      
      private var §8#6§:Loader;
      
      public function §3#P§(param1:§4#?§, param2:§?!>§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§@v§);
         this.§["F§("Button_Skip");
         this.§["F§("Button_Prev1");
         this.§["F§("Button_Next1");
         this.§["F§("Button_Close");
      }
      
      protected function §["F§(param1:String) : void
      {
         if(§@!D§.getItemByName(param1))
         {
            §@!D§.getItemByName(param1).setVisibility(false);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §'@§.§&"g§("cutscene-" + _loc2_);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOWCREDITS":
               §%!?§(§+!Y§.STATE_NAME);
               break;
            case "CLOSE_BUTTON":
               §%!?§(§ !M§.STATE_NAME);
               break;
            case "SKIP":
               §4$4§.playSound("Menu_Confirm","ChannelBird",0,1);
         }
      }
      
      override protected function startCutScene() : void
      {
         §@!D§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = getCutSceneName();
         var _loc2_:ByteArray = §^"Q§.§=!"§("cutscene_" + _loc1_);
         if(mLevelManager.previousLevel == "4001-15")
         {
            (§@!D§.getItemByName("Button_Skip") as §;!b§).§!#=§(§8!g§.LISTENER_EVENT_MOUSE_UP,"SHOWCREDITS");
         }
         else
         {
            (§@!D§.getItemByName("Button_Skip") as §;!b§).§!#=§(§8!g§.LISTENER_EVENT_MOUSE_UP,"SKIP");
         }
         if(_loc2_)
         {
            Starling.§%!q§.color = 0;
            §+!p§.§`?§.setVisible(false);
            §+!p§.§`?§.§'#F§(false);
            this.§8#6§ = new Loader();
            this.§8#6§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §@!D§.getItemByName("MovieClip_Cutscene2").setVisibility(true);
            §@!D§.getItemByName("MovieClip_Cutscene2").mClip.addChild(this.§8#6§);
            §@!D§.getItemByName("Button_Prev1").setVisibility(false);
            §@!D§.getItemByName("Button_Next1").setVisibility(false);
            if(_loc1_.toLocaleLowerCase().indexOf("intro") != -1)
            {
               this.§?a§();
            }
            else if(_loc1_.toLocaleLowerCase().indexOf("outro") != -1 || _loc1_.toLocaleLowerCase().indexOf("complete") != -1)
            {
               this.§0"f§();
            }
            §&y§ = new §=$C§([{
               "action":§>$8§.§&!8§,
               "time":§6!W§
            }],_loc1_);
            if(§^"Q§.§'"U§(_loc1_))
            {
               §&y§.cutSceneType = §=$C§.§,"b§;
            }
         }
         else
         {
            §@!D§.getItemByName("MovieClip_Cutscene2").setVisibility(false);
            §@!D§.getItemByName("Button_Prev1").setVisibility(false);
            §@!D§.getItemByName("Button_Next1").setVisibility(false);
            super.startCutScene();
         }
      }
      
      protected function §?a§() : void
      {
         §4$4§.playSound("birds_intro",§4$4§.§6!H§,0,1);
      }
      
      protected function §0"f§() : void
      {
         §4$4§.playSound("birds_outro",§4$4§.§6!H§,0,1);
      }
      
      override public function deActivate() : void
      {
         §4$4§.§'!?§();
         if(this.§8#6§)
         {
            §@!D§.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.§8#6§);
            this.§8#6§.unloadAndStop();
            this.§8#6§ = null;
         }
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§'I§)
         {
            §'I§.update(0);
         }
      }
   }
}
