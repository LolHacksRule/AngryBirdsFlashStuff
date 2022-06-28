package §@Q§
{
   import §"$§.Starling;
   import §"[§.LevelBackground;
   import §#!X§.LevelModel;
   import §&[§.§-o§;
   import §-^§.FacebookLevelObjectManager;
   import §1!&§.Sprite;
   import §3Y§.LevelObjectManager;
   import §7!]§.§`e§;
   import §8!?§.§&!c§;
   import §8!?§.AnimationManager;
   import §8!?§.DynamicContentManager;
   import §8!?§.TextureManager;
   import §9!H§.§"!L§;
   import §?A§.LevelMain;
   import §?A§.LevelSlingshot;
   import flash.display.Stage;
   
   public class FacebookLeveLMain extends LevelMain
   {
       
      
      private var §?_§:Stage;
      
      private var §[o§:Array;
      
      public function FacebookLeveLMain(stage:Stage)
      {
         this.§?_§ = stage;
         super(stage);
      }
      
      public function §#!S§() : Array
      {
         if(this.§[o§)
         {
            return this.§[o§.concat();
         }
         return null;
      }
      
      public function §<!B§() : int
      {
         if(this.§[o§)
         {
            return this.§[o§.length;
         }
         return 0;
      }
      
      public function §+!Z§(powerup:String) : Boolean
      {
         if(!this.§[o§)
         {
            return false;
         }
         return this.§[o§.indexOf(powerup) >= 0;
      }
      
      public function §-c§(powerup:String) : void
      {
         if(!this.§[o§)
         {
            this.§[o§ = [];
         }
         this.§[o§.push(powerup);
      }
      
      override public function init(level:LevelModel) : void
      {
         super.init(level);
         this.§[o§ = [];
      }
      
      override public function setController(controller:§"!L§) : void
      {
         super.setController(controller);
         if(controller is §-o§)
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
         return new DynamicContentManager(this.§?_§.loaderInfo.parameters.assetsUrl || "",this.§?_§.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initThemeSoundsManager() : DynamicContentManager
      {
         return new DynamicContentManager(this.§?_§.loaderInfo.parameters.assetsUrl || "",this.§?_§.loaderInfo.parameters.buildNumber || "",false);
      }
      
      override protected function initCutSceneManager() : DynamicContentManager
      {
         return new DynamicContentManager(this.§?_§.loaderInfo.parameters.assetsUrl || "",this.§?_§.loaderInfo.parameters.buildNumber || "");
      }
      
      override public function get backgroundTextureManager() : TextureManager
      {
         if(§9L§)
         {
            return §9L§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(textureManager:TextureManager) : AnimationManager
      {
         return new §&!c§(textureManager);
      }
      
      override protected function initLevelBackground(name:String, groundLevel:Number, textureManager:TextureManager, mimimumScale:Number) : LevelBackground
      {
         if(name == "BACKGROUND_FB_MOUNTAINS" && !Starling.isSoftware)
         {
            return new §`e§(name,groundLevel,textureManager,mimimumScale);
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
