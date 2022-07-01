package §1!c§
{
   import §!!!§.§6!l§;
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2`§.§%!!§;
   import §2`§.§;!#§;
   import §<!0§.§-k§;
   import §<!0§.§5a§;
   import flash.events.Event;
   
   public class StateCutScene extends §7X§
   {
      
      public static const §8"%§:String = "StateCutScene";
      
      private static const §^-§:Number = 500;
       
      
      private var §^p§:§5a§;
      
      private var §=!Z§:Boolean;
      
      private var §&&§:Number = 0;
      
      private var §@!j§:Number = 0;
      
      protected var §=""§:§;!#§;
      
      public function StateCutScene(param1:§0![§, param2:§+f§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §#Q§() : §5a§
      {
         return this.§^p§;
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(§7I§.§7!%§.Views.View_CutScene[0]);
      }
      
      protected function §^>§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§=""§)
            {
               §^!T§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§=""§.removeEventListener(Event.COMPLETE,this.§+Z§);
               this.§=""§.removeEventListener(Event.CANCEL,this.§2!m§);
               this.§=""§.addEventListener(Event.COMPLETE,this.§+Z§);
               this.§=""§.addEventListener(Event.CANCEL,this.§2!m§);
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
         this.§=""§.loadContent("cutscene_" + param1);
      }
      
      protected function §+Z§(param1:Event) : void
      {
         if(this.§=""§)
         {
            this.§=""§.removeEventListener(Event.COMPLETE,this.§+Z§);
            this.§=""§.removeEventListener(Event.CANCEL,this.§2!m§);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §^!T§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§%!!§ = §%!!§.§,2§;
         if(this.§=""§)
         {
            _loc2_ = this.§=""§.§]!z§;
         }
         this.§^p§ = §-k§.§<a§(_loc1_,_loc2_);
         if(this.§^p§)
         {
            § !4§.§%"7§.§@D§.userProgress.§!l§(_loc1_);
            §@!S§.§2A§.§`!V§(true);
            §@!S§.§2A§.§+"2§(false);
            this.§^p§.update(0);
            §@!S§.§2A§.§<G§.addChild(this.§^p§.sprite);
         }
      }
      
      protected function §2!m§(param1:Event) : void
      {
         if(this.§=""§)
         {
            this.§=""§.removeEventListener(Event.COMPLETE,this.§+Z§);
            this.§=""§.removeEventListener(Event.CANCEL,this.§2!m§);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §@!S§.§2A§.clearLevel();
         §@!S§.§2A§.§`!V§(false);
         if(!this.§=""§)
         {
            this.§=""§ = §@!S§.§2A§.§6!q§;
         }
         if(§6!l§.§+J§)
         {
            §6!l§.§+J§.color = 0;
         }
         this.§&&§ = 0;
         this.§@!j§ = 0;
         §^!T§.getItemByName("Button_Skip").setVisibility(false);
         §^!T§.getItemByName("Button_Skip").mClip.alpha = this.§&&§;
         § !4§.§%"7§.§=!a§();
         this.§=!Z§ = false;
         §^!T§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§^>§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = §4a§.previousLevel;
         var _loc2_:String = §4a§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §4a§.currentLevel;
            _loc2_ = §4a§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§^p§)
         {
            §@!S§.§2A§.§<G§.removeChild(this.§^p§.sprite);
            this.§^p§.dispose();
            this.§^p§ = null;
         }
         if(this.§=""§)
         {
            this.§=""§.removeEventListener(Event.COMPLETE,this.§+Z§);
            this.§=""§.removeEventListener(Event.CANCEL,this.§2!m§);
         }
         §@!S§.§2A§.§+"2§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§=!Z§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               § !4§.§%"7§.§]!;§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§@!j§ > §^-§)
         {
            §^!T§.getItemByName("Button_Skip").setVisibility(true);
            this.§&&§ += param1 / 1000;
            §^!T§.getItemByName("Button_Skip").mClip.alpha = this.§&&§;
            if(this.§&&§ > 1)
            {
               this.§&&§ = 1;
            }
         }
         else
         {
            this.§@!j§ += param1;
         }
         if(this.§=!Z§ || this.§^p§ && !this.§^p§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§=""§)
         {
            this.§=""§.removeEventListener(Event.COMPLETE,this.§+Z§);
            this.§=""§.removeEventListener(Event.CANCEL,this.§2!m§);
         }
         if(this.§^p§ && this.§^p§.§&p§ == §5a§.§9!u§)
         {
            §^j§.§4H§ = StateCutScene.§8"%§;
            §7"6§(§^j§.§8"%§);
         }
         else if(this.§^p§ && this.§^p§.§&p§ == §5a§.§;"$§)
         {
            §7"6§(§1!Z§.§8"%§);
         }
         else
         {
            _loc1_ = §4a§.currentLevel;
            if(_loc1_)
            {
               §7"6§(this.§9!"§());
            }
            else
            {
               §7"6§(this.§]!$§);
            }
         }
      }
      
      protected function get §]!$§() : String
      {
         return §^j§.§8"%§;
      }
      
      protected function §9!"§() : String
      {
         return §'8§.§8"%§;
      }
   }
}
