package §?!E§
{
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §6!4§.§<!D§;
   import §6_§.§,!>§;
   import §6_§.§=!"§;
   import §9z§.§1!$§;
   import §9z§.§^!"§;
   import §;!b§.§%>§;
   import §[!b§.§'!R§;
   import com.angrybirds.§6U§;
   import flash.events.Event;
   
   public class StateCutScene extends §5"#§
   {
      
      public static const §+B§:String = "StateCutScene";
      
      private static const §-!n§:Number = 500;
       
      
      private var §0!2§:§1!$§;
      
      private var §-k§:Boolean;
      
      private var §"!a§:Number = 0;
      
      private var §;!u§:Number = 0;
      
      protected var §`!q§:§=!"§;
      
      public function StateCutScene(param1:§=!o§, param2:§%>§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §^`§() : §1!$§
      {
         return this.§0!2§;
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(§+!b§.§#!P§.Views.View_CutScene[0]);
      }
      
      protected function §3P§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§`!q§)
            {
               §#2§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§`!q§.removeEventListener(Event.COMPLETE,this.§'2§);
               this.§`!q§.removeEventListener(Event.CANCEL,this.§^!v§);
               this.§`!q§.addEventListener(Event.COMPLETE,this.§'2§);
               this.§`!q§.addEventListener(Event.CANCEL,this.§^!v§);
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
         this.§`!q§.loadContent("cutscene_" + param1);
      }
      
      protected function §'2§(param1:Event) : void
      {
         if(this.§`!q§)
         {
            this.§`!q§.removeEventListener(Event.COMPLETE,this.§'2§);
            this.§`!q§.removeEventListener(Event.CANCEL,this.§^!v§);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §#2§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§,!>§ = §,!>§.§?!+§;
         if(this.§`!q§)
         {
            _loc2_ = this.§`!q§.§`!`§;
         }
         this.§0!2§ = §^!"§.§'D§(_loc1_,_loc2_);
         if(this.§0!2§)
         {
            §-!l§.§"x§.§?"&§.userProgress.§4s§(_loc1_);
            §6U§.§+_§.§ W§(true);
            §6U§.§+_§.§>b§(false);
            this.§0!2§.update(0);
            §6U§.§+_§.§5"2§.addChild(this.§0!2§.sprite);
         }
      }
      
      protected function §^!v§(param1:Event) : void
      {
         if(this.§`!q§)
         {
            this.§`!q§.removeEventListener(Event.COMPLETE,this.§'2§);
            this.§`!q§.removeEventListener(Event.CANCEL,this.§^!v§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6U§.§+_§.clearLevel();
         §6U§.§+_§.§ W§(false);
         if(!this.§`!q§)
         {
            this.§`!q§ = §6U§.§+_§.§0M§;
         }
         if(§<!D§.§?!_§)
         {
            §<!D§.§?!_§.color = 0;
         }
         this.§"!a§ = 0;
         this.§;!u§ = 0;
         §#2§.getItemByName("Button_Skip").setVisibility(false);
         §#2§.getItemByName("Button_Skip").mClip.alpha = this.§"!a§;
         §-!l§.§"x§.§9x§();
         this.§-k§ = false;
         §#2§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§3P§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = §+o§.previousLevel;
         var _loc2_:String = §+o§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §+o§.currentLevel;
            _loc2_ = §+o§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§0!2§)
         {
            §6U§.§+_§.§5"2§.removeChild(this.§0!2§.sprite);
            this.§0!2§.dispose();
            this.§0!2§ = null;
         }
         if(this.§`!q§)
         {
            this.§`!q§.removeEventListener(Event.COMPLETE,this.§'2§);
            this.§`!q§.removeEventListener(Event.CANCEL,this.§^!v§);
         }
         §6U§.§+_§.§>b§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§-k§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §-!l§.§"x§.§3l§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§;!u§ > §-!n§)
         {
            §#2§.getItemByName("Button_Skip").setVisibility(true);
            this.§"!a§ += param1 / 1000;
            §#2§.getItemByName("Button_Skip").mClip.alpha = this.§"!a§;
            if(this.§"!a§ > 1)
            {
               this.§"!a§ = 1;
            }
         }
         else
         {
            this.§;!u§ += param1;
         }
         if(this.§-k§ || this.§0!2§ && !this.§0!2§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§`!q§)
         {
            this.§`!q§.removeEventListener(Event.COMPLETE,this.§'2§);
            this.§`!q§.removeEventListener(Event.CANCEL,this.§^!v§);
         }
         if(this.§0!2§ && this.§0!2§.§ !n§ == §1!$§.§6"4§)
         {
            §]l§.§'A§ = StateCutScene.§+B§;
            §0!w§(§]l§.§+B§);
         }
         else if(this.§0!2§ && this.§0!2§.§ !n§ == §1!$§.§%z§)
         {
            §0!w§(§2S§.§+B§);
         }
         else
         {
            _loc1_ = §+o§.currentLevel;
            if(_loc1_)
            {
               §0!w§(this.§<"#§());
            }
            else
            {
               §0!w§(this.§`5§);
            }
         }
      }
      
      protected function get §`5§() : String
      {
         return §]l§.§+B§;
      }
      
      protected function §<"#§() : String
      {
         return §62§.§+B§;
      }
   }
}
