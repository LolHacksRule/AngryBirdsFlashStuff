package §94§
{
   import §%#A§.§,#w§;
   import §&$!§.§+#!§;
   import §0=§.§+$=§;
   import §0=§.§6$'§;
   import §0=§.§>t§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6V§.§`"5§;
   import §9+§.Starling;
   import §<"1§.§'"S§;
   import §>"c§.§@!1§;
   import §@#§.§^#Q§;
   import §`!R§.§&"8§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §%"5§ extends StateCutScene
   {
      
      public static const §3!<§:int = 16;
       
      
      private var §;b§:Loader;
      
      public function §%"5§(param1:§^#Q§, param2:§+#!§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§4c§);
         this.§,r§("Button_Skip");
         this.§,r§("Button_Prev1");
         this.§,r§("Button_Next1");
         this.§,r§("Button_Close");
      }
      
      protected function §,r§(param1:String) : void
      {
         if(§?Q§.getItemByName(param1))
         {
            §?Q§.getItemByName(param1).setVisibility(false);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §`"5§.§8s§("cutscene-" + _loc2_);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOWCREDITS":
               §5"p§(§@"X§.STATE_NAME);
               break;
            case "CLOSE_BUTTON":
               §5"p§(§@!1§.STATE_NAME);
               break;
            case "SKIP":
               §!#&§.playSound("Menu_Confirm","ChannelBird",0,1);
         }
      }
      
      override protected function startCutScene() : void
      {
         §?Q§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = getCutSceneName();
         var _loc2_:ByteArray = §>t§.§7#u§("cutscene_" + _loc1_);
         if(mLevelManager.previousLevel == "4001-15")
         {
            (§?Q§.getItemByName("Button_Skip") as §,#w§).§<!t§(§'"S§.LISTENER_EVENT_MOUSE_UP,"SHOWCREDITS");
         }
         else
         {
            (§?Q§.getItemByName("Button_Skip") as §,#w§).§<!t§(§'"S§.LISTENER_EVENT_MOUSE_UP,"SKIP");
         }
         if(_loc2_)
         {
            Starling.§?$#§.color = 0;
            §!#A§.§#F§.§8"d§(false);
            §!#A§.§#F§.§1!t§(false);
            this.§;b§ = new Loader();
            this.§;b§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §?Q§.getItemByName("MovieClip_Cutscene2").setVisibility(true);
            §?Q§.getItemByName("MovieClip_Cutscene2").mClip.addChild(this.§;b§);
            §?Q§.getItemByName("Button_Prev1").setVisibility(false);
            §?Q§.getItemByName("Button_Next1").setVisibility(false);
            if(_loc1_.toLocaleLowerCase().indexOf("intro") != -1)
            {
               this.playIntroSound();
            }
            else if(_loc1_.toLocaleLowerCase().indexOf("outro") != -1 || _loc1_.toLocaleLowerCase().indexOf("complete") != -1)
            {
               this.playOutroSound();
            }
            §`"3§ = new §+$=§([{
               "action":§6$'§.§-E§,
               "time":§3!<§
            }],_loc1_);
            if(§>t§.§6!N§(_loc1_))
            {
               §`"3§.cutSceneType = §+$=§.§?<§;
            }
         }
         else
         {
            §?Q§.getItemByName("MovieClip_Cutscene2").setVisibility(false);
            §?Q§.getItemByName("Button_Prev1").setVisibility(false);
            §?Q§.getItemByName("Button_Next1").setVisibility(false);
            super.startCutScene();
         }
      }
      
      protected function playIntroSound() : void
      {
         §!#&§.playSound("birds_intro",§!#&§.§>#c§,0,1);
      }
      
      protected function playOutroSound() : void
      {
         §!#&§.playSound("birds_outro",§!#&§.§>#c§,0,1);
      }
      
      override public function deActivate() : void
      {
         §!#&§.§4#J§();
         if(this.§;b§)
         {
            §?Q§.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.§;b§);
            this.§;b§.unloadAndStop();
            this.§;b§ = null;
         }
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§-#g§)
         {
            §-#g§.update(0);
         }
      }
   }
}
