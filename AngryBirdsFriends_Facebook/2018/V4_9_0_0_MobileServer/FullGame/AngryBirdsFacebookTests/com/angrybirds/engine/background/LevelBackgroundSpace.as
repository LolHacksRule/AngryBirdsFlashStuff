package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.item.LevelItemSoundManagerLua;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundLayer;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundLayerSpace;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundSpace;
   import com.angrybirds.engine.leveleventmanager.LevelEventPublisher;
   import com.rovio.graphics.TextureManager;
   import starling.display.Sprite;
   
   public class LevelBackgroundSpace extends LevelBackground
   {
       
      
      protected var mGravitySliceSpriteName:String;
      
      protected var mGravitySliceSpriteFadedName:String;
      
      protected var mGravityBoxSpriteName:String;
      
      protected var mGravityBoxSpriteFadedName:String;
      
      protected var mTextureScale:Number = 1.0;
      
      protected var mSoundManager:LevelItemSoundManagerLua;
      
      public function LevelBackgroundSpace(levelEventPublisher:LevelEventPublisher, background:LevelThemeBackgroundSpace, groundLevel:Number, textureManager:TextureManager, soundManager:LevelItemSoundManagerLua, minimumScale:Number, highQuality:Boolean = true)
      {
         super(levelEventPublisher,background,groundLevel,textureManager,minimumScale,highQuality);
         this.mSoundManager = soundManager;
         this.mGravitySliceSpriteName = background.gravitySliceSpriteName;
         this.mGravitySliceSpriteFadedName = background.gravitySliceSpriteFadedName;
         this.mGravityBoxSpriteName = background.gravityBoxSpriteName;
         this.mGravityBoxSpriteFadedName = background.gravityBoxSpriteFadedName;
         this.mTextureScale = background.textureScale;
      }
      
      public function get gravitySliceSpriteName() : String
      {
         return this.mGravitySliceSpriteName;
      }
      
      public function get gravitySliceSpriteFadedName() : String
      {
         return this.mGravitySliceSpriteFadedName;
      }
      
      public function get gravityBoxSpriteName() : String
      {
         return this.mGravityBoxSpriteName;
      }
      
      public function get gravityBoxSpriteFadedName() : String
      {
         return this.mGravityBoxSpriteFadedName;
      }
      
      public function get textureScale() : Number
      {
         return this.mTextureScale;
      }
      
      override public function playAmbientSound() : void
      {
         if(this.mSoundManager)
         {
            this.mSoundManager.playSound(ambientSoundName,null,10000);
         }
      }
      
      override public function stopAmbientSound() : void
      {
         if(this.mSoundManager)
         {
            this.mSoundManager.stopChannel(ambientSoundName);
         }
      }
      
      override protected function updateGroundSpriteOffset() : void
      {
         mGroundSprite.x = 0;
         mGroundSprite.y = mGroundLevel - mScreenY + 100;
      }
      
      override protected function createLayer(data:LevelThemeBackgroundLayer, sprite:Sprite, textureManager:TextureManager, minimumScale:Number) : LevelBackgroundLayer
      {
         var spaceData:LevelThemeBackgroundLayerSpace = null;
         if(data is LevelThemeBackgroundLayerSpace)
         {
            spaceData = data as LevelThemeBackgroundLayerSpace;
            return new LevelBackgroundLayerSpace(spaceData,sprite,textureManager,minimumScale);
         }
         return super.createLayer(data,sprite,textureManager,minimumScale);
      }
   }
}
