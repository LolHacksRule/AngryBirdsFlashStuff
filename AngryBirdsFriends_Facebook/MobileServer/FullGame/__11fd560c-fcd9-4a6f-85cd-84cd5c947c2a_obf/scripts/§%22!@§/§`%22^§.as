package §"!@§
{
   import §0"A§.§2"w§;
   import §3#T§.§'§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$-§.§"!b§;
   import §;$-§.§<#N§;
   import §;$-§.§^#;§;
   import §;$3§.§8=§;
   import §<h§.§>"0§;
   import §?"e§.Starling;
   import §@!M§.§!"p§;
   import §`7§.§`"x§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §`"^§ extends StateCutScene
   {
      
      public static const §8n§:int = 16;
       
      
      private var §8!P§:Loader;
      
      public function §`"^§(param1:§8=§, param2:§""C§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§<B§);
         this.§;!i§("Button_Skip");
         this.§;!i§("Button_Prev1");
         this.§;!i§("Button_Next1");
         this.§;!i§("Button_Close");
      }
      
      protected function §;!i§(param1:String) : void
      {
         if(§`!H§.getItemByName(param1))
         {
            §`!H§.getItemByName(param1).setVisibility(false);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §`"x§.§#E§("cutscene-" + _loc2_);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOWCREDITS":
               §1"h§(§ !K§.STATE_NAME);
               break;
            case "CLOSE_BUTTON":
               §1"h§(§2"w§.STATE_NAME);
               break;
            case "SKIP":
               §!"p§.playSound("Menu_Confirm","ChannelBird",0,1);
         }
      }
      
      override protected function startCutScene() : void
      {
         §`!H§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = getCutSceneName();
         var _loc2_:ByteArray = §"!b§.§6!;§("cutscene_" + _loc1_);
         if(mLevelManager.previousLevel == "4001-15")
         {
            (§`!H§.getItemByName("Button_Skip") as §>"0§).§<!4§(§'#0§.LISTENER_EVENT_MOUSE_UP,"SHOWCREDITS");
         }
         else
         {
            (§`!H§.getItemByName("Button_Skip") as §>"0§).§<!4§(§'#0§.LISTENER_EVENT_MOUSE_UP,"SKIP");
         }
         if(_loc2_)
         {
            Starling.§@#K§.color = 0;
            §3#U§.§#$4§.§;"?§(false);
            §3#U§.§#$4§.§0"2§(false);
            this.§8!P§ = new Loader();
            this.§8!P§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §`!H§.getItemByName("MovieClip_Cutscene2").setVisibility(true);
            §`!H§.getItemByName("MovieClip_Cutscene2").mClip.addChild(this.§8!P§);
            §`!H§.getItemByName("Button_Prev1").setVisibility(false);
            §`!H§.getItemByName("Button_Next1").setVisibility(false);
            if(_loc1_.toLocaleLowerCase().indexOf("intro") != -1)
            {
               this.§6"N§();
            }
            else if(_loc1_.toLocaleLowerCase().indexOf("outro") != -1 || _loc1_.toLocaleLowerCase().indexOf("complete") != -1)
            {
               this.§0!N§();
            }
            §'n§ = new §^#;§([{
               "action":§<#N§.§3"N§,
               "time":§8n§
            }],_loc1_);
            if(§"!b§.§;"#§(_loc1_))
            {
               §'n§.cutSceneType = §^#;§.§0!R§;
            }
         }
         else
         {
            §`!H§.getItemByName("MovieClip_Cutscene2").setVisibility(false);
            §`!H§.getItemByName("Button_Prev1").setVisibility(false);
            §`!H§.getItemByName("Button_Next1").setVisibility(false);
            super.startCutScene();
         }
      }
      
      protected function §6"N§() : void
      {
         §!"p§.playSound("birds_intro",§!"p§.§^#@§,0,1);
      }
      
      protected function §0!N§() : void
      {
         §!"p§.playSound("birds_outro",§!"p§.§^#@§,0,1);
      }
      
      override public function deActivate() : void
      {
         §!"p§.§5#u§();
         if(this.§8!P§)
         {
            §`!H§.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.§8!P§);
            this.§8!P§.unloadAndStop();
            this.§8!P§ = null;
         }
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§!s§)
         {
            §!s§.update(0);
         }
      }
   }
}
