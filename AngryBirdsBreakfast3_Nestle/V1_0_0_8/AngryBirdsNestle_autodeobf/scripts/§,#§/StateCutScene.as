package §,#§
{
   import §"!G§.§3!f§;
   import §"",§.§4" §;
   import §"",§.§<!V§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §6`§.§!!H§;
   import §6`§.§2a§;
   import §8!e§.§3"&§;
   import §=!6§.§+8§;
   import §>P§.§,3§;
   import com.angrybirds.§4"6§;
   import flash.events.Event;
   
   public class StateCutScene extends §@!4§
   {
      
      public static const §'u§:String = "StateCutScene";
      
      private static const §#!N§:Number = 500;
       
      
      private var §&B§:§4" §;
      
      private var §8!0§:Boolean;
      
      private var §8!9§:Number = 0;
      
      private var §9!L§:Number = 0;
      
      protected var §5n§:§!!H§;
      
      public function StateCutScene(param1:§3"&§, param2:§3!f§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §>!@§() : §4" §
      {
         return this.§&B§;
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(§8!1§.§31§.Views.View_CutScene[0]);
      }
      
      protected function §-0§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§5n§)
            {
               §^!6§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§5n§.removeEventListener(Event.COMPLETE,this.§`1§);
               this.§5n§.removeEventListener(Event.CANCEL,this.§'6§);
               this.§5n§.addEventListener(Event.COMPLETE,this.§`1§);
               this.§5n§.addEventListener(Event.CANCEL,this.§'6§);
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
         this.§5n§.loadContent("cutscene_" + param1);
      }
      
      protected function §`1§(param1:Event) : void
      {
         if(this.§5n§)
         {
            this.§5n§.removeEventListener(Event.COMPLETE,this.§`1§);
            this.§5n§.removeEventListener(Event.CANCEL,this.§'6§);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §^!6§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§2a§ = §2a§.§"e§;
         if(this.§5n§)
         {
            _loc2_ = this.§5n§.§ X§;
         }
         this.§&B§ = §<!V§.§5d§(_loc1_,_loc2_);
         if(this.§&B§)
         {
            §-O§.§5!1§.§]u§.userProgress.§'T§(_loc1_);
            §4"6§.§;!k§.§7!X§(true);
            §4"6§.§;!k§.§?>§(false);
            this.§&B§.update(0);
            §4"6§.§;!k§.§-"5§.addChild(this.§&B§.sprite);
         }
      }
      
      protected function §'6§(param1:Event) : void
      {
         if(this.§5n§)
         {
            this.§5n§.removeEventListener(Event.COMPLETE,this.§`1§);
            this.§5n§.removeEventListener(Event.CANCEL,this.§'6§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4"6§.§;!k§.clearLevel();
         §4"6§.§;!k§.§7!X§(false);
         if(!this.§5n§)
         {
            this.§5n§ = §4"6§.§;!k§.§6G§;
         }
         if(§+8§.§0j§)
         {
            §+8§.§0j§.color = 0;
         }
         this.§8!9§ = 0;
         this.§9!L§ = 0;
         §^!6§.getItemByName("Button_Skip").setVisibility(false);
         §^!6§.getItemByName("Button_Skip").mClip.alpha = this.§8!9§;
         §-O§.§5!1§.§+U§();
         this.§8!0§ = false;
         §^!6§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§-0§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = §!3§.previousLevel;
         var _loc2_:String = §!3§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §!3§.currentLevel;
            _loc2_ = §!3§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§&B§)
         {
            §4"6§.§;!k§.§-"5§.removeChild(this.§&B§.sprite);
            this.§&B§.dispose();
            this.§&B§ = null;
         }
         if(this.§5n§)
         {
            this.§5n§.removeEventListener(Event.COMPLETE,this.§`1§);
            this.§5n§.removeEventListener(Event.CANCEL,this.§'6§);
         }
         §4"6§.§;!k§.§?>§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§8!0§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §-O§.§5!1§.§0`§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§9!L§ > §#!N§)
         {
            §^!6§.getItemByName("Button_Skip").setVisibility(true);
            this.§8!9§ += param1 / 1000;
            §^!6§.getItemByName("Button_Skip").mClip.alpha = this.§8!9§;
            if(this.§8!9§ > 1)
            {
               this.§8!9§ = 1;
            }
         }
         else
         {
            this.§9!L§ += param1;
         }
         if(this.§8!0§ || this.§&B§ && !this.§&B§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§5n§)
         {
            this.§5n§.removeEventListener(Event.COMPLETE,this.§`1§);
            this.§5n§.removeEventListener(Event.CANCEL,this.§'6§);
         }
         if(this.§&B§ && this.§&B§.§,W§ == §4" §.§";§)
         {
            §=%§.§-!E§ = StateCutScene.§'u§;
            §'"6§(§=%§.§'u§);
         }
         else if(this.§&B§ && this.§&B§.§,W§ == §4" §.§"t§)
         {
            §'"6§(§6L§.§'u§);
         }
         else
         {
            _loc1_ = §!3§.currentLevel;
            if(_loc1_)
            {
               §'"6§(this.§9!&§());
            }
            else
            {
               §'"6§(this.§+"§);
            }
         }
      }
      
      protected function get §+"§() : String
      {
         return §=%§.§'u§;
      }
      
      protected function §9!&§() : String
      {
         return § K§.§'u§;
      }
   }
}
