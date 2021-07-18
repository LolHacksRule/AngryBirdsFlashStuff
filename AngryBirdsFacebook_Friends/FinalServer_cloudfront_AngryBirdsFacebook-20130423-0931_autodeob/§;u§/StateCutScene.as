package §;u§
{
   import §"a§.§!"J§;
   import §1!t§.§""B§;
   import §4;§.§0!'§;
   import §4;§.§=!^§;
   import §8";§.§+d§;
   import §9!n§.LevelManager;
   import §<T§.§""#§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   
   public class StateCutScene extends §+d§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §&"9§:Number = 500;
      
      protected static var §@"+§:Boolean;
      
      protected static var §"d§:int;
       
      
      protected var §0!1§:§0!'§;
      
      private var §6g§:Boolean;
      
      private var §,J§:Number = 0;
      
      private var §;q§:Number = 0;
      
      private var §3"&§:§""#§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function §@"T§(param1:Boolean, param2:int = -2147483648) : void
      {
         §@"+§ = param1;
         §"d§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_CutScene[0]);
      }
      
      protected function §1F§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§3"&§)
            {
               §2"@§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§3"&§.removeEventListener(Event.COMPLETE,this.§&!J§);
               this.§3"&§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§3"&§.addEventListener(Event.COMPLETE,this.§&!J§);
               this.§3"&§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§3"&§.§+!K§("cutscene_" + param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      private function §&!J§(param1:Event) : void
      {
         if(this.§3"&§)
         {
            this.§3"&§.removeEventListener(Event.COMPLETE,this.§&!J§);
            this.§3"&§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §2"@§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§5!e§();
         var _loc2_:§`m§ = §`m§.§&"5§;
         if(this.§3"&§)
         {
            _loc2_ = this.§3"&§.textureManager;
         }
         this.§0!1§ = §=!^§.final(_loc1_,_loc2_);
         if(this.§0!1§)
         {
            AngryBirdsFP11.sUserProgress.§2"2§(_loc1_);
            §?l§.§'h§.§#"[§(true);
            §?l§.§'h§.§%l§(false);
            this.§0!1§.update(0);
            §?l§.§'h§.§&C§.addChild(this.§0!1§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§3"&§)
         {
            this.§3"&§.removeEventListener(Event.COMPLETE,this.§&!J§);
            this.§3"&§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§3"&§)
         {
            this.§3"&§ = §?l§.§'h§.§8K§;
         }
         if(§!"J§.§1&§)
         {
            §!"J§.§1&§.color = 0;
         }
         this.§,J§ = 0;
         this.§;q§ = 0;
         §2"@§.getItemByName("Button_Skip").setVisibility(false);
         §2"@§.getItemByName("Button_Skip").mClip.alpha = this.§,J§;
         AngryBirdsFP11.§4!8§();
         this.§6g§ = false;
         §2"@§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§5!e§();
         if(!this.§1F§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §5!e§() : String
      {
         var _loc1_:String = LevelManager.§&"V§;
         var _loc2_:String = LevelManager.§`"Q§().§"!X§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = LevelManager.§ T§;
            _loc2_ = LevelManager.§`"Q§().§"!X§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§0!1§)
         {
            §?l§.§'h§.§&C§.removeChild(this.§0!1§.sprite);
            this.§0!1§.dispose();
            this.§0!1§ = null;
         }
         if(this.§3"&§)
         {
            this.§3"&§.removeEventListener(Event.COMPLETE,this.§&!J§);
            this.§3"&§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §?l§.§'h§.§%l§(true);
         LevelManager.§&"V§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§6g§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§>m§.§=-§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§;q§ > §&"9§)
         {
            §2"@§.getItemByName("Button_Skip").setVisibility(!§@"+§);
            this.§,J§ += param1 / 1000;
            §2"@§.getItemByName("Button_Skip").mClip.alpha = this.§,J§;
            if(this.§,J§ > 1)
            {
               this.§,J§ = 1;
            }
         }
         else
         {
            this.§;q§ += param1;
         }
         if(this.§6g§)
         {
            this.end();
            return §+d§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         if(!§@"+§)
         {
            if(this.§0!1§ && !this.§0!1§.update(param1))
            {
               this.end();
            }
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      protected function end() : void
      {
         var _loc1_:String = null;
         if(this.§0!1§ && this.§0!1§.§'!G§ == §0!'§.§6"7§)
         {
            §9"@§.§8!]§ = StateCutScene.STATE_NAME;
            mNextState = this.getLevelSelectionState();
         }
         else if(this.§0!1§ && this.§0!1§.§'!G§ == §0!'§.§#!Y§)
         {
            mNextState = §&"[§.STATE_NAME;
         }
         else
         {
            _loc1_ = LevelManager.§ T§;
            if(_loc1_)
            {
               mNextState = this.getLevelLoadState();
            }
            else
            {
               mNextState = this.getLevelSelectionState();
            }
         }
         §@"T§(false);
      }
      
      protected function getLevelSelectionState() : String
      {
         return §9"@§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §-!v§.STATE_NAME;
      }
   }
}
