package §#!]§
{
   import §!R§.§#!L§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §0!_§.§!!G§;
   import §0!_§.§3S§;
   import §3!0§.§`i§;
   import §7"6§.§^!_§;
   import §=!d§.§5!5§;
   import §]!]§.§<1§;
   import §]!]§.§[?§;
   import flash.events.Event;
   
   public class StateCutScene extends §3_§
   {
      
      public static const §]!y§:String = "StateCutScene";
      
      private static const §5T§:Number = 500;
       
      
      private var §@>§:§[?§;
      
      private var §57§:Boolean;
      
      private var §<!X§:Number = 0;
      
      private var § O§:Number = 0;
      
      protected var §6!k§:§3S§;
      
      public function StateCutScene(param1:§-g§, param2:§^!_§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §4"'§() : §[?§
      {
         return this.§@>§;
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(§%!-§.§#t§.Views.View_CutScene[0]);
      }
      
      protected function §&+§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§6!k§)
            {
               §4!q§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§6!k§.removeEventListener(Event.COMPLETE,this.§+!T§);
               this.§6!k§.removeEventListener(Event.CANCEL,this.§]I§);
               this.§6!k§.addEventListener(Event.COMPLETE,this.§+!T§);
               this.§6!k§.addEventListener(Event.CANCEL,this.§]I§);
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
         this.§6!k§.loadContent("cutscene_" + param1);
      }
      
      protected function §+!T§(param1:Event) : void
      {
         if(this.§6!k§)
         {
            this.§6!k§.removeEventListener(Event.COMPLETE,this.§+!T§);
            this.§6!k§.removeEventListener(Event.CANCEL,this.§]I§);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §4!q§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§!!G§ = §!!G§.§&!;§;
         if(this.§6!k§)
         {
            _loc2_ = this.§6!k§.§^!§;
         }
         this.§@>§ = §<1§.§&d§(_loc1_,_loc2_);
         if(this.§@>§)
         {
            §-!2§.§7O§.§ !n§.userProgress.§`7§(_loc1_);
            §`i§.§&!L§.§2!J§(true);
            §`i§.§&!L§.§@=§(false);
            this.§@>§.update(0);
            §`i§.§&!L§.§^I§.addChild(this.§@>§.sprite);
         }
      }
      
      protected function §]I§(param1:Event) : void
      {
         if(this.§6!k§)
         {
            this.§6!k§.removeEventListener(Event.COMPLETE,this.§+!T§);
            this.§6!k§.removeEventListener(Event.CANCEL,this.§]I§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §`i§.§&!L§.clearLevel();
         §`i§.§&!L§.§2!J§(false);
         if(!this.§6!k§)
         {
            this.§6!k§ = §`i§.§&!L§.§ try§;
         }
         if(§5!5§.§^'§)
         {
            §5!5§.§^'§.color = 0;
         }
         this.§<!X§ = 0;
         this.§ O§ = 0;
         §4!q§.getItemByName("Button_Skip").setVisibility(false);
         §4!q§.getItemByName("Button_Skip").mClip.alpha = this.§<!X§;
         §-!2§.§7O§.§0c§();
         this.§57§ = false;
         §4!q§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§&+§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = §#n§.previousLevel;
         var _loc2_:String = §#n§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §#n§.currentLevel;
            _loc2_ = §#n§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§@>§)
         {
            §`i§.§&!L§.§^I§.removeChild(this.§@>§.sprite);
            this.§@>§.dispose();
            this.§@>§ = null;
         }
         if(this.§6!k§)
         {
            this.§6!k§.removeEventListener(Event.COMPLETE,this.§+!T§);
            this.§6!k§.removeEventListener(Event.CANCEL,this.§]I§);
         }
         §`i§.§&!L§.§@=§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§57§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §-!2§.§7O§.§#!p§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§ O§ > §5T§)
         {
            §4!q§.getItemByName("Button_Skip").setVisibility(true);
            this.§<!X§ += param1 / 1000;
            §4!q§.getItemByName("Button_Skip").mClip.alpha = this.§<!X§;
            if(this.§<!X§ > 1)
            {
               this.§<!X§ = 1;
            }
         }
         else
         {
            this.§ O§ += param1;
         }
         if(this.§57§ || this.§@>§ && !this.§@>§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§6!k§)
         {
            this.§6!k§.removeEventListener(Event.COMPLETE,this.§+!T§);
            this.§6!k§.removeEventListener(Event.CANCEL,this.§]I§);
         }
         if(this.§@>§ && this.§@>§.§@!u§ == §[?§.§"!D§)
         {
            §=A§.§8!]§ = StateCutScene.§]!y§;
            §]a§(§=A§.§]!y§);
         }
         else if(this.§@>§ && this.§@>§.§@!u§ == §[?§.§9!5§)
         {
            §]a§(§'"$§.§]!y§);
         }
         else
         {
            _loc1_ = §#n§.currentLevel;
            if(_loc1_)
            {
               §]a§(this.§9"&§());
            }
            else
            {
               §]a§(this.§]!%§);
            }
         }
      }
      
      protected function get §]!%§() : String
      {
         return §=A§.§]!y§;
      }
      
      protected function §9"&§() : String
      {
         return §6U§.§]!y§;
      }
   }
}
