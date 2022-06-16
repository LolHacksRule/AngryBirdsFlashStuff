package §2";§
{
   import § !j§.§4#c§;
   import §#,§.§ !>§;
   import §&!_§.§0I§;
   import §'!j§.Starling;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §0"C§.§+"z§;
   import §1"l§.§`""§;
   import §8#K§.§3Z§;
   import §`"0§.§%#B§;
   import §`"0§.§'! §;
   import §`"0§.§?#d§;
   import §`#@§.§7n§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §1$2§ extends StateCutScene
   {
      
      public static const §'!q§:int = 16;
       
      
      private var §%"&§:Loader;
      
      public function §1$2§(param1:§;"n§, param2:§4#c§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§+#X§);
         this.§]k§("Button_Skip");
         this.§]k§("Button_Prev1");
         this.§]k§("Button_Next1");
         this.§]k§("Button_Close");
      }
      
      protected function §]k§(param1:String) : void
      {
         if(§[$5§.getItemByName(param1))
         {
            §[$5§.getItemByName(param1).setVisibility(false);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §0I§.§?j§("cutscene-" + _loc2_);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOWCREDITS":
               §1!L§(§'#J§.STATE_NAME);
               break;
            case "CLOSE_BUTTON":
               §1!L§(§+"z§.STATE_NAME);
               break;
            case "SKIP":
               §3Z§.playSound("Menu_Confirm","ChannelBird",0,1);
         }
      }
      
      override protected function startCutScene() : void
      {
         §[$5§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = getCutSceneName();
         var _loc2_:ByteArray = §%#B§.§[$-§("cutscene_" + _loc1_);
         if(mLevelManager.previousLevel == "4001-15")
         {
            (§[$5§.getItemByName("Button_Skip") as § !>§).§1r§(§6"n§.LISTENER_EVENT_MOUSE_UP,"SHOWCREDITS");
         }
         else
         {
            (§[$5§.getItemByName("Button_Skip") as § !>§).§1r§(§6"n§.LISTENER_EVENT_MOUSE_UP,"SKIP");
         }
         if(_loc2_)
         {
            Starling.§>x§.color = 0;
            §7n§.§6#K§.setVisible(false);
            §7n§.§6#K§.§1"`§(false);
            this.§%"&§ = new Loader();
            this.§%"&§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §[$5§.getItemByName("MovieClip_Cutscene2").setVisibility(true);
            §[$5§.getItemByName("MovieClip_Cutscene2").mClip.addChild(this.§%"&§);
            §[$5§.getItemByName("Button_Prev1").setVisibility(false);
            §[$5§.getItemByName("Button_Next1").setVisibility(false);
            if(_loc1_.toLocaleLowerCase().indexOf("intro") != -1)
            {
               this.§^#+§();
            }
            else if(_loc1_.toLocaleLowerCase().indexOf("outro") != -1 || _loc1_.toLocaleLowerCase().indexOf("complete") != -1)
            {
               this.§=#W§();
            }
            §%#d§ = new §'! §([{
               "action":§?#d§.§%#Z§,
               "time":§'!q§
            }],_loc1_);
            if(§%#B§.§[!w§(_loc1_))
            {
               §%#d§.cutSceneType = §'! §.§>#<§;
            }
         }
         else
         {
            §[$5§.getItemByName("MovieClip_Cutscene2").setVisibility(false);
            §[$5§.getItemByName("Button_Prev1").setVisibility(false);
            §[$5§.getItemByName("Button_Next1").setVisibility(false);
            super.startCutScene();
         }
      }
      
      protected function §^#+§() : void
      {
         §3Z§.playSound("birds_intro",§3Z§.§8#R§,0,1);
      }
      
      protected function §=#W§() : void
      {
         §3Z§.playSound("birds_outro",§3Z§.§8#R§,0,1);
      }
      
      override public function deActivate() : void
      {
         §3Z§.§&$?§();
         if(this.§%"&§)
         {
            §[$5§.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.§%"&§);
            this.§%"&§.unloadAndStop();
            this.§%"&§ = null;
         }
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§9!4§)
         {
            §9!4§.update(0);
         }
      }
   }
}
