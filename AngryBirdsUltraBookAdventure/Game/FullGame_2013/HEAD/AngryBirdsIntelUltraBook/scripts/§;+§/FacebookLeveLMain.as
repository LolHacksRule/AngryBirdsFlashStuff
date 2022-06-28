package §;+§
{
   import §#!,§.Sprite;
   import §,!7§.§%$§;
   import §,!7§.AnimationManager;
   import §,!7§.DynamicContentManager;
   import §,!7§.TextureManager;
   import §-s§.LevelBackground;
   import §6!!§.LevelObjectManager;
   import §7!>§.Starling;
   import §91§.§else§;
   import §=C§.FacebookLevelObjectManager;
   import §>!_§.LevelModel;
   import §[!h§.§?X§;
   import §[w§.§?O§;
   import §]!@§.LevelMain;
   import §]!@§.LevelSlingshot;
   import flash.display.Stage;
   
   public class FacebookLeveLMain extends LevelMain
   {
       
      
      private var §[;§:Stage;
      
      private var §3v§:Array;
      
      public function FacebookLeveLMain(stage:Stage)
      {
         this.§[;§ = stage;
         super(stage);
      }
      
      public function §!!X§() : Array
      {
         if(this.§3v§)
         {
            return this.§3v§.concat();
         }
         return null;
      }
      
      public function §@n§() : int
      {
         if(this.§3v§)
         {
            return this.§3v§.length;
         }
         return 0;
      }
      
      public function §?y§(powerup:String) : Boolean
      {
         if(!this.§3v§)
         {
            return false;
         }
         return this.§3v§.indexOf(powerup) >= 0;
      }
      
      public function §=?§(powerup:String) : void
      {
         if(!this.§3v§)
         {
            this.§3v§ = [];
         }
         this.§3v§.push(powerup);
      }
      
      override public function init(level:LevelModel) : void
      {
         super.init(level);
         this.§3v§ = [];
      }
      
      override public function setController(controller:§else§) : void
      {
         super.setController(controller);
         if(controller is §?O§)
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
         return new DynamicContentManager(this.§[;§.loaderInfo.parameters.assetsUrl || "",this.§[;§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : DynamicContentManager
      {
         return new DynamicContentManager(this.§[;§.loaderInfo.parameters.assetsUrl || "",this.§[;§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : DynamicContentManager
      {
         return new DynamicContentManager(this.§[;§.loaderInfo.parameters.assetsUrl || "",this.§[;§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : TextureManager
      {
         if(§2h§)
         {
            return §2h§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(textureManager:TextureManager) : AnimationManager
      {
         return new §%$§(textureManager);
      }
      
      override protected function initLevelBackground(name:String, groundLevel:Number, textureManager:TextureManager, mimimumScale:Number) : LevelBackground
      {
         if(name == "BACKGROUND_FB_MOUNTAINS" && !Starling.isSoftware)
         {
            return new §?X§(name,groundLevel,textureManager,mimimumScale);
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
