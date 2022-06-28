package §![§
{
   import §"L§.LevelModel;
   import §,!_§.§'!U§;
   import §,!_§.AnimationManager;
   import §,!_§.DynamicContentManager;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §2!?§.§7!W§;
   import §2!H§.LevelMain;
   import §2!H§.LevelSlingshot;
   import §3!3§.FacebookLevelObjectManager;
   import §3p§.LevelObjectManager;
   import §5!+§.§87§;
   import §6!7§.Sprite;
   import §7H§.§2w§;
   import §<§.LevelBackground;
   import flash.display.Stage;
   
   public class FacebookLeveLMain extends LevelMain
   {
       
      
      private var §'!'§:Stage;
      
      private var §&!c§:Array;
      
      public function FacebookLeveLMain(stage:Stage)
      {
         this.§'!'§ = stage;
         super(stage);
      }
      
      public function §`§() : Array
      {
         if(this.§&!c§)
         {
            return this.§&!c§.concat();
         }
         return null;
      }
      
      public function §6!8§() : int
      {
         if(this.§&!c§)
         {
            return this.§&!c§.length;
         }
         return 0;
      }
      
      public function §<!;§(powerup:String) : Boolean
      {
         if(!this.§&!c§)
         {
            return false;
         }
         return this.§&!c§.indexOf(powerup) >= 0;
      }
      
      public function §6C§(powerup:String) : void
      {
         if(!this.§&!c§)
         {
            this.§&!c§ = [];
         }
         this.§&!c§.push(powerup);
      }
      
      override public function init(level:LevelModel) : void
      {
         super.init(level);
         this.§&!c§ = [];
      }
      
      override public function setController(controller:§7!W§) : void
      {
         super.setController(controller);
         if(controller is §87§)
         {
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
      }
      
      override protected function updateWithTime(deltaTime:Number, updateGraphics:Boolean, updatePhysics:Boolean, updateSlingshot:Boolean) : Number
      {
         return super.updateWithTime(deltaTime,updateGraphics,updatePhysics,updateSlingshot);
      }
      
      override public function handleEngineUpdateStep(timeStep:Number) : void
      {
         super.handleEngineUpdateStep(timeStep);
      }
      
      override protected function initThemeGraphicsManager() : DynamicContentManager
      {
         return new DynamicContentManager(this.§'!'§.loaderInfo.parameters.assetsUrl || "",this.§'!'§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : DynamicContentManager
      {
         return new DynamicContentManager(this.§'!'§.loaderInfo.parameters.assetsUrl || "",this.§'!'§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : DynamicContentManager
      {
         return new DynamicContentManager(this.§'!'§.loaderInfo.parameters.assetsUrl || "",this.§'!'§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : TextureManager
      {
         if(§"!B§)
         {
            return §"!B§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(textureManager:TextureManager) : AnimationManager
      {
         return new §'!U§(textureManager);
      }
      
      override protected function initLevelBackground(name:String, groundLevel:Number, textureManager:TextureManager, mimimumScale:Number) : LevelBackground
      {
         if(name == "BACKGROUND_FB_MOUNTAINS" && !Starling.isSoftware)
         {
            return new §2w§(name,groundLevel,textureManager,mimimumScale);
         }
         return new LevelBackground(name,groundLevel,textureManager,mimimumScale);
      }
      
      override protected function initLevelSlingshot(level:LevelModel) : LevelSlingshot
      {
         return new FacebookLevelSlingshot(this,level,new Sprite());
      }
      
      override protected function initLevelObjectManager(level:LevelModel) : LevelObjectManager
      {
         return new FacebookLevelObjectManager(this,level,new Sprite());
      }
   }
}
