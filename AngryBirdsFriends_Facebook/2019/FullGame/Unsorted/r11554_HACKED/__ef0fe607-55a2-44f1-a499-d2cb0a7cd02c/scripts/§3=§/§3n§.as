package §3=§
{
   import §"$=§.§'![§;
   import §#M§.§<"c§;
   import §+#B§.§5"w§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §5!$§.§"S§;
   import §6Q§.§%!D§;
   import §6Q§.§,!,§;
   import §6Q§.§?d§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §]"P§.Starling;
   import §]x§.§ $>§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §3n§ extends StateCutScene
   {
      
      public static const §`"%§:int = 16;
       
      
      private var § !`§:Loader;
      
      public function §3n§(param1:§'![§, param2:§16§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§!!>§);
         this.§'"L§("Button_Skip");
         this.§'"L§("Button_Prev1");
         this.§'"L§("Button_Next1");
         this.§'"L§("Button_Close");
      }
      
      protected function §'"L§(param1:String) : void
      {
         if(§<"`§.getItemByName(param1))
         {
            §<"`§.getItemByName(param1).setVisibility(false);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §5"w§.§0""§("cutscene-" + _loc2_);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOWCREDITS":
               §%D§(§1U§.STATE_NAME);
               break;
            case "CLOSE_BUTTON":
               §%D§(§ $>§.STATE_NAME);
               break;
            case "SKIP":
               §[#%§.playSound("Menu_Confirm","ChannelBird",0,1);
         }
      }
      
      override protected function startCutScene() : void
      {
         §<"`§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = getCutSceneName();
         var _loc2_:ByteArray = §%!D§.§ "k§("cutscene_" + _loc1_);
         if(mLevelManager.previousLevel == "4001-15")
         {
            (§<"`§.getItemByName("Button_Skip") as §"S§).§4M§(§'!,§.LISTENER_EVENT_MOUSE_UP,"SHOWCREDITS");
         }
         else
         {
            (§<"`§.getItemByName("Button_Skip") as §"S§).§4M§(§'!,§.LISTENER_EVENT_MOUSE_UP,"SKIP");
         }
         if(_loc2_)
         {
            Starling.§3!I§.color = 0;
            §%"T§.§;`§.setVisible(false);
            §%"T§.§;`§.§^!m§(false);
            this.§ !`§ = new Loader();
            this.§ !`§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §<"`§.getItemByName("MovieClip_Cutscene2").setVisibility(true);
            §<"`§.getItemByName("MovieClip_Cutscene2").mClip.addChild(this.§ !`§);
            §<"`§.getItemByName("Button_Prev1").setVisibility(false);
            §<"`§.getItemByName("Button_Next1").setVisibility(false);
            if(_loc1_.toLocaleLowerCase().indexOf("intro") != -1)
            {
               this.§ C§();
            }
            else if(_loc1_.toLocaleLowerCase().indexOf("outro") != -1 || _loc1_.toLocaleLowerCase().indexOf("complete") != -1)
            {
               this.§!"J§();
            }
            §'!5§ = new §,!,§([{
               "action":§?d§.§3# §,
               "time":§`"%§
            }],_loc1_);
            if(§%!D§.§47§(_loc1_))
            {
               §'!5§.cutSceneType = §,!,§.§^!"§;
            }
         }
         else
         {
            §<"`§.getItemByName("MovieClip_Cutscene2").setVisibility(false);
            §<"`§.getItemByName("Button_Prev1").setVisibility(false);
            §<"`§.getItemByName("Button_Next1").setVisibility(false);
            super.startCutScene();
         }
      }
      
      protected function § C§() : void
      {
         §[#%§.playSound("birds_intro",§[#%§.§0"f§,0,1);
      }
      
      protected function §!"J§() : void
      {
         §[#%§.playSound("birds_outro",§[#%§.§0"f§,0,1);
      }
      
      override public function deActivate() : void
      {
         §[#%§.§3$A§();
         if(this.§ !`§)
         {
            §<"`§.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.§ !`§);
            this.§ !`§.unloadAndStop();
            this.§ !`§ = null;
         }
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§;#E§)
         {
            §;#E§.update(0);
         }
      }
   }
}
