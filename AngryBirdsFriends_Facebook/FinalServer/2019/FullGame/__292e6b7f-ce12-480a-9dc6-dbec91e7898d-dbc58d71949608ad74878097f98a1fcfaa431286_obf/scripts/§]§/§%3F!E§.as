package §]§
{
   import § "L§.§1"r§;
   import §"#k§.Starling;
   import §#"4§.§<"G§;
   import §+`§.§%"q§;
   import §3"V§.§ b§;
   import §7#$§.§]#q§;
   import §8$=§.§4#=§;
   import §8$=§.§=$7§;
   import §8$=§.§=Q§;
   import §9$1§.§'R§;
   import §?#z§.§]$?§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §?!E§ extends StateCutScene
   {
      
      public static const §,#T§:int = 16;
       
      
      private var §>5§:Loader;
      
      public function §?!E§(param1:§]#q§, param2:§%"q§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§3#u§);
         this.§<!!§("Button_Skip");
         this.§<!!§("Button_Prev1");
         this.§<!!§("Button_Next1");
         this.§<!!§("Button_Close");
      }
      
      protected function §<!!§(param1:String) : void
      {
         if(§;!w§.getItemByName(param1))
         {
            §;!w§.getItemByName(param1).setVisibility(false);
         }
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function onCutSceneNotAvailable(param1:Event) : void
      {
         super.onCutSceneNotAvailable(param1);
         var _loc2_:String = getCutSceneName();
         §<"G§.§+"r§("cutscene-" + _loc2_);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SHOWCREDITS":
               §3#§(§[#t§.STATE_NAME);
               break;
            case "CLOSE_BUTTON":
               §3#§(§'R§.STATE_NAME);
               break;
            case "SKIP":
               § b§.playSound("Menu_Confirm","ChannelBird",0,1);
         }
      }
      
      override protected function startCutScene() : void
      {
         §;!w§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = getCutSceneName();
         var _loc2_:ByteArray = §4#=§.§'$@§("cutscene_" + _loc1_);
         if(mLevelManager.previousLevel == "4001-15")
         {
            (§;!w§.getItemByName("Button_Skip") as §1"r§).§+"6§(§`$4§.LISTENER_EVENT_MOUSE_UP,"SHOWCREDITS");
         }
         else
         {
            (§;!w§.getItemByName("Button_Skip") as §1"r§).§+"6§(§`$4§.LISTENER_EVENT_MOUSE_UP,"SKIP");
         }
         if(_loc2_)
         {
            Starling.§4$#§.color = 0;
            §]$?§.§2#§.setVisible(false);
            §]$?§.§2#§.§9!S§(false);
            this.§>5§ = new Loader();
            this.§>5§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
            §;!w§.getItemByName("MovieClip_Cutscene2").setVisibility(true);
            §;!w§.getItemByName("MovieClip_Cutscene2").mClip.addChild(this.§>5§);
            §;!w§.getItemByName("Button_Prev1").setVisibility(false);
            §;!w§.getItemByName("Button_Next1").setVisibility(false);
            if(_loc1_.toLocaleLowerCase().indexOf("intro") != -1)
            {
               this.§2!T§();
            }
            else if(_loc1_.toLocaleLowerCase().indexOf("outro") != -1 || _loc1_.toLocaleLowerCase().indexOf("complete") != -1)
            {
               this.§1#S§();
            }
            §&#T§ = new §=$7§([{
               "action":§=Q§.§-""§,
               "time":§,#T§
            }],_loc1_);
            if(§4#=§.§66§(_loc1_))
            {
               §&#T§.cutSceneType = §=$7§.§3"C§;
            }
         }
         else
         {
            §;!w§.getItemByName("MovieClip_Cutscene2").setVisibility(false);
            §;!w§.getItemByName("Button_Prev1").setVisibility(false);
            §;!w§.getItemByName("Button_Next1").setVisibility(false);
            super.startCutScene();
         }
      }
      
      protected function §2!T§() : void
      {
         § b§.playSound("birds_intro",§ b§.§1#-§,0,1);
      }
      
      protected function §1#S§() : void
      {
         § b§.playSound("birds_outro",§ b§.§1#-§,0,1);
      }
      
      override public function deActivate() : void
      {
         § b§.§8!7§();
         if(this.§>5§)
         {
            §;!w§.getItemByName("MovieClip_Cutscene2").mClip.removeChild(this.§>5§);
            this.§>5§.unloadAndStop();
            this.§>5§ = null;
         }
         super.deActivate();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(§&#H§)
         {
            §&#H§.update(0);
         }
      }
   }
}
