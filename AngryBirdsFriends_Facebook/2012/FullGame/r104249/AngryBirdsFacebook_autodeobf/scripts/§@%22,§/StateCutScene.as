package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §#S§.§"W§;
   import §#S§.§?!?§;
   import §+!F§.§1!D§;
   import §3D§.§%!x§;
   import §3D§.§8"A§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §=#§.§5!S§;
   import §`!n§.LevelManager;
   import flash.events.Event;
   
   public class StateCutScene extends §5!S§
   {
      
      public static const STATE_NAME:String = "StateCutScene";
      
      private static const §&L§:Number = 500;
      
      protected static var §>k§:Boolean;
      
      protected static var §%L§:int;
       
      
      protected var § !s§:§8"A§;
      
      private var §'2§:Boolean;
      
      private var §2![§:Number = 0;
      
      private var §5b§:Number = 0;
      
      private var § p§:§"W§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      public static function §2!I§(param1:Boolean, param2:int = -2147483648) : void
      {
         §>k§ = param1;
         §%L§ = param2;
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_CutScene[0]);
      }
      
      protected function §3V§(param1:String) : Boolean
      {
         if(param1)
         {
            if(this.§ p§)
            {
               §2!K§.getItemByName("MovieClip_Loading").setVisibility(true);
               this.§ p§.removeEventListener(Event.COMPLETE,this.§<!G§);
               this.§ p§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§ p§.addEventListener(Event.COMPLETE,this.§<!G§);
               this.§ p§.addEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
               this.§ p§.§?!a§("cutscene_" + param1);
            }
            else
            {
               this.startCutScene();
            }
            return true;
         }
         return false;
      }
      
      private function §<!G§(param1:Event) : void
      {
         if(this.§ p§)
         {
            this.§ p§.removeEventListener(Event.COMPLETE,this.§<!G§);
            this.§ p§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
            this.startCutScene();
         }
      }
      
      protected function startCutScene() : void
      {
         §2!K§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§%n§();
         var _loc2_:§?!?§ = §?!?§.§1[§;
         if(this.§ p§)
         {
            _loc2_ = this.§ p§.textureManager;
         }
         this.§ !s§ = §%!x§.§9"A§(_loc1_,_loc2_);
         if(this.§ !s§)
         {
            AngryBirdsFP11.sUserProgress.§0g§(_loc1_);
            §&2§.§],§.§`!I§(true);
            §&2§.§],§.§>!&§(false);
            this.§ !s§.update(0);
            §&2§.§],§.§2!&§.addChild(this.§ !s§.sprite);
         }
      }
      
      protected function onCutSceneNotAvailable(param1:Event) : void
      {
         if(this.§ p§)
         {
            this.§ p§.removeEventListener(Event.COMPLETE,this.§<!G§);
            this.§ p§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         this.end();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§ p§)
         {
            this.§ p§ = §&2§.§],§.§,Z§;
         }
         if(§1!D§.§7!T§)
         {
            §1!D§.§7!T§.color = 0;
         }
         this.§2![§ = 0;
         this.§5b§ = 0;
         §2!K§.getItemByName("Button_Skip").setVisibility(false);
         §2!K§.getItemByName("Button_Skip").mClip.alpha = this.§2![§;
         AngryBirdsFP11.§>d§();
         this.§'2§ = false;
         §2!K§.getItemByName("MovieClip_Loading").setVisibility(false);
         var _loc1_:String = this.§%n§();
         if(!this.§3V§(_loc1_))
         {
            this.end();
         }
      }
      
      protected function §%n§() : String
      {
         var _loc1_:String = LevelManager.§]!5§;
         var _loc2_:String = LevelManager.§6!6§().§&!i§(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc1_ = LevelManager.§`-§;
            _loc2_ = LevelManager.§6!6§().§&!i§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§ !s§)
         {
            §&2§.§],§.§2!&§.removeChild(this.§ !s§.sprite);
            this.§ !s§.dispose();
            this.§ !s§ = null;
         }
         if(this.§ p§)
         {
            this.§ p§.removeEventListener(Event.COMPLETE,this.§<!G§);
            this.§ p§.removeEventListener(Event.CANCEL,this.onCutSceneNotAvailable);
         }
         §&2§.§],§.§>!&§(true);
         LevelManager.§]!5§ = null;
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         switch(param2)
         {
            case "SKIP":
               this.§'2§ = true;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§#!4§.§-"F§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         if(this.§5b§ > §&L§)
         {
            §2!K§.getItemByName("Button_Skip").setVisibility(!§>k§);
            this.§2![§ += param1 / 1000;
            §2!K§.getItemByName("Button_Skip").mClip.alpha = this.§2![§;
            if(this.§2![§ > 1)
            {
               this.§2![§ = 1;
            }
         }
         else
         {
            this.§5b§ += param1;
         }
         if(this.§'2§)
         {
            this.end();
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         if(!§>k§)
         {
            if(this.§ !s§ && !this.§ !s§.update(param1))
            {
               this.end();
            }
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      protected function end() : void
      {
         var _loc1_:String = null;
         if(this.§ !s§ && this.§ !s§.§%G§ == §8"A§.§+3§)
         {
            §[2§.§89§ = StateCutScene.STATE_NAME;
            mNextState = this.getLevelSelectionState();
         }
         else if(this.§ !s§ && this.§ !s§.§%G§ == §8"A§.§#! §)
         {
            mNextState = §`f§.STATE_NAME;
         }
         else
         {
            _loc1_ = LevelManager.§`-§;
            if(_loc1_)
            {
               mNextState = this.getLevelLoadState();
            }
            else
            {
               mNextState = this.getLevelSelectionState();
            }
         }
         §2!I§(false);
      }
      
      protected function getLevelSelectionState() : String
      {
         return §[2§.STATE_NAME;
      }
      
      protected function getLevelLoadState() : String
      {
         return §'!N§.STATE_NAME;
      }
   }
}
