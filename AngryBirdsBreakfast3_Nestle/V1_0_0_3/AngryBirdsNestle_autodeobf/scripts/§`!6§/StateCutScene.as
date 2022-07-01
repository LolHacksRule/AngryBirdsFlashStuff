package §`!6§
{
   import §"E§.§&z§;
   import §"E§.§^!u§;
   import §5!W§.§>P§;
   import §6!?§.§&"§;
   import §6!?§.§`!O§;
   import §>!a§.§5l§;
   import §@f§.§&!"§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   import flash.events.Event;
   
   public class StateCutScene extends §-!c§
   {
      
      public static const §]O§:String = "StateCutScene";
      
      private static const §=!A§:Number = 500;
       
      
      private var §1!B§:§^!u§;
      
      private var §;!%§:Boolean;
      
      private var §@!X§:Number = 0;
      
      private var §2F§:Number = 0;
      
      protected var §,!W§:§&"§;
      
      public function StateCutScene(param1:§5l§, param2:§-!<§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         super(param1,param3,param4,param2);
      }
      
      protected function get §=`§() : §^!u§
      {
         return this.§1!B§;
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(§"!j§.§3=§.Views.View_CutScene[0]);
      }
      
      protected function §1v§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§,!W§)
            {
               §!^§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§,!W§.removeEventListener(Event.COMPLETE,this.§8!X§);
               this.§,!W§.removeEventListener(Event.CANCEL,this.§if §);
               this.§,!W§.addEventListener(Event.COMPLETE,this.§8!X§);
               this.§,!W§.addEventListener(Event.CANCEL,this.§if §);
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
         this.§,!W§.loadContent("cutscene_" + param1);
      }
      
      protected function §8!X§(param1:Event) : void
      {
         if(this.§,!W§)
         {
            this.§,!W§.removeEventListener(Event.COMPLETE,this.§8!X§);
            this.§,!W§.removeEventListener(Event.CANCEL,this.§if §);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §!^§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.getCutSceneName();
         var _loc2_:§`!O§ = §`!O§.§=J§;
         if(this.§,!W§)
         {
            _loc2_ = this.§,!W§.§&p§;
         }
         this.§1!B§ = §&z§.§=!S§(_loc1_,_loc2_);
         if(this.§1!B§)
         {
            §&N§.§#Y§.§`"$§.userProgress.§2!G§(_loc1_);
            §4!l§.§,!8§.§&!L§(true);
            §4!l§.§,!8§.§-!Y§(false);
            this.§1!B§.update(0);
            §4!l§.§,!8§.§1!f§.addChild(this.§1!B§.sprite);
         }
      }
      
      protected function §if §(param1:Event) : void
      {
         if(this.§,!W§)
         {
            this.§,!W§.removeEventListener(Event.COMPLETE,this.§8!X§);
            this.§,!W§.removeEventListener(Event.CANCEL,this.§if §);
         }
         this.end();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4!l§.§,!8§.clearLevel();
         §4!l§.§,!8§.§&!L§(false);
         if(!this.§,!W§)
         {
            this.§,!W§ = §4!l§.§,!8§.§2!!§;
         }
         if(§>P§.§;_§)
         {
            §>P§.§;_§.color = 0;
         }
         this.§@!X§ = 0;
         this.§2F§ = 0;
         §!^§.getItemByName("Button_Skip").setVisibility(false);
         §!^§.getItemByName("Button_Skip").mClip.alpha = this.§@!X§;
         §&N§.§#Y§.§5!^§();
         this.§;!%§ = false;
         §!^§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc2_:String = this.getCutSceneName();
         if(!this.§1v§(_loc2_))
         {
            this.end();
         }
      }
      
      protected function getCutSceneName() : String
      {
         var _loc1_:String = §^!§.previousLevel;
         var _loc2_:String = §^!§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = §^!§.currentLevel;
            _loc2_ = §^!§.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§1!B§)
         {
            §4!l§.§,!8§.§1!f§.removeChild(this.§1!B§.sprite);
            this.§1!B§.dispose();
            this.§1!B§ = null;
         }
         if(this.§,!W§)
         {
            this.§,!W§.removeEventListener(Event.COMPLETE,this.§8!X§);
            this.§,!W§.removeEventListener(Event.CANCEL,this.§if §);
         }
         §4!l§.§,!8§.§-!Y§(true);
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§;!%§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               §&N§.§#Y§.§&<§();
         }
      }
      
      override protected function update(param1:Number) : void
      {
         if(this.§2F§ > §=!A§)
         {
            §!^§.getItemByName("Button_Skip").setVisibility(true);
            this.§@!X§ += param1 / 1000;
            §!^§.getItemByName("Button_Skip").mClip.alpha = this.§@!X§;
            if(this.§@!X§ > 1)
            {
               this.§@!X§ = 1;
            }
         }
         else
         {
            this.§2F§ += param1;
         }
         if(this.§;!%§ || this.§1!B§ && !this.§1!B§.update(param1))
         {
            this.end();
         }
      }
      
      private function end() : void
      {
         var _loc1_:String = null;
         if(this.§,!W§)
         {
            this.§,!W§.removeEventListener(Event.COMPLETE,this.§8!X§);
            this.§,!W§.removeEventListener(Event.CANCEL,this.§if §);
         }
         if(this.§1!B§ && this.§1!B§.§>v§ == §^!u§.§2!^§)
         {
            §?E§.§3f§ = StateCutScene.§]O§;
            §8=§(§?E§.§]O§);
         }
         else if(this.§1!B§ && this.§1!B§.§>v§ == §^!u§.§80§)
         {
            §8=§(§3B§.§]O§);
         }
         else
         {
            _loc1_ = §^!§.currentLevel;
            if(_loc1_)
            {
               §8=§(this.§=!Y§());
            }
            else
            {
               §8=§(this.§7"1§);
            }
         }
      }
      
      protected function get §7"1§() : String
      {
         return §?E§.§]O§;
      }
      
      protected function §=!Y§() : String
      {
         return §-%§.§]O§;
      }
   }
}
