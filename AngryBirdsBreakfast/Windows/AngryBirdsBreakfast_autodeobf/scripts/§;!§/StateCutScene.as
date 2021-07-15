package §;!§
{
   import § ! §.§5!x§;
   import § ! §.§=!>§;
   import §,L§.§6!W§;
   import §4!o§.§+!N§;
   import §4!o§.§?!Z§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §`!a§.§1"&§;
   import com.angrybirds.§&!"§;
   import flash.events.Event;
   
   public class StateCutScene extends §;" §
   {
      
      public static const §-!q§:String = "StateCutScene";
      
      private static const §<!U§:Number = 500;
       
      
      private var §+!S§:§?!Z§;
      
      private var §;!a§:Boolean;
      
      private var §5+§:Number = 0;
      
      private var §<!^§:Number = 0;
      
      protected var §9k§:§=!>§;
      
      public function StateCutScene(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §;P§() : §?!Z§
      {
         return this.§+!S§;
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(§#"0§.§+#§.Views.View_CutScene[0]);
      }
      
      protected function §6=§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§9k§)
            {
               §?P§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§9k§.removeEventListener(Event.COMPLETE,this.§'!k§);
               this.§9k§.removeEventListener(Event.CANCEL,this.§@^§);
               this.§9k§.addEventListener(Event.COMPLETE,this.§'!k§);
               this.§9k§.addEventListener(Event.CANCEL,this.§@^§);
               this.loadCutSceneContent(param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      protected function loadCutSceneContent(param1:String) : void
      {
         this.§9k§.loadContent("cutscene_" + param1);
      }
      
      protected function §'!k§(param1:Event) : void
      {
         if(this.§9k§)
         {
            this.§9k§.removeEventListener(Event.COMPLETE,this.§'!k§);
            this.§9k§.removeEventListener(Event.CANCEL,this.§@^§);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §?P§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§5!x§ = §5!x§.§2Z§;
         if(this.§9k§)
         {
            _loc2_ = this.§9k§.§58§;
         }
         this.§+!S§ = §+!N§.§2! §(_loc1_,_loc2_);
         if(this.§+!S§)
         {
            §6!!§.singleton.§<!S§.userProgress.§[2§(_loc1_);
            §&!"§.§1!D§.§"!Q§(true);
            §&!"§.§1!D§.§2f§(false);
            this.§+!S§.update(0);
            §&!"§.§1!D§.§<x§.addChild(this.§+!S§.sprite);
         }
      }
      
      protected function §@^§(param1:Event) : void
      {
         if(this.§9k§)
         {
            this.§9k§.removeEventListener(Event.COMPLETE,this.§'!k§);
            this.§9k§.removeEventListener(Event.CANCEL,this.§@^§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §&!"§.§1!D§.clearLevel();
         §&!"§.§1!D§.§"!Q§(false);
         if(!this.§9k§)
         {
            this.§9k§ = §&!"§.§1!D§.§ ""§;
         }
         if(§1"&§.§1i§)
         {
            §1"&§.§1i§.color = 0;
         }
         this.§5+§ = 0;
         this.§<!^§ = 0;
         §?P§.getItemByName("Button_Skip").setVisibility(false);
         §?P§.getItemByName("Button_Skip").mClip.alpha = this.§5+§;
         §6!!§.singleton.§2!>§();
         this.§;!a§ = false;
         §?P§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§6=§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = §&" §.previousLevel;
         var _loc2_:String = §&" §.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §&" §.currentLevel;
            _loc2_ = §&" §.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§+!S§)
         {
            §&!"§.§1!D§.§<x§.removeChild(this.§+!S§.sprite);
            this.§+!S§.dispose();
            this.§+!S§ = null;
         }
         if(this.§9k§)
         {
            this.§9k§.removeEventListener(Event.COMPLETE,this.§'!k§);
            this.§9k§.removeEventListener(Event.CANCEL,this.§@^§);
         }
         §&!"§.§1!D§.§2f§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§;!a§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §6!!§.singleton.§%!O§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§<!^§ > §<!U§)
         {
            §?P§.getItemByName("Button_Skip").setVisibility(true);
            this.§5+§ += param1 / 1000;
            §?P§.getItemByName("Button_Skip").mClip.alpha = this.§5+§;
            if(this.§5+§ > 1)
            {
               this.§5+§ = 1;
            }
         }
         else
         {
            this.§<!^§ += param1;
         }
         if(this.§;!a§ || this.§+!S§ && !this.§+!S§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§9k§)
         {
            this.§9k§.removeEventListener(Event.COMPLETE,this.§'!k§);
            this.§9k§.removeEventListener(Event.CANCEL,this.§@^§);
         }
         if(this.§+!S§ && this.§+!S§.§^R§ == §?!Z§.§-!o§)
         {
            §4!9§.§#!p§ = StateCutScene.§-!q§;
            §<f§(§4!9§.§-!q§);
         }
         else if(this.§+!S§ && this.§+!S§.§^R§ == §?!Z§.§extends§)
         {
            §<f§(§&4§.§-!q§);
         }
         else
         {
            _loc1_ = §&" §.currentLevel;
            if(_loc1_)
            {
               §<f§(this.§8!w§());
            }
            else
            {
               §<f§(this.§ !0§);
            }
         }
      }
      
      protected function get § !0§() : String
      {
         return §4!9§.§-!q§;
      }
      
      protected function §8!w§() : String
      {
         return §[j§.§-!q§;
      }
   }
}
