package com.AngryBirds.LevelPlayer
{
   import com.AngryBirds.LevelItemsData.LevelThemeBackground;
   import com.AngryBirds.LevelItemsData.LevelThemeBackgrounds;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class LevelBackground extends Sprite
   {
      
      public static const SHOW_BACKGROUNDS:Boolean = true;
       
      
      public var mLevelMain:LevelMain;
      
      public var mSkyAndGround:Sprite;
      
      public var mLevelBackgroundInformation:LevelThemeBackground;
      
      public var mLayerClips:Array;
      
      public var mBackground:MovieClip;
      
      public var mForeground:MovieClip;
      
      private var mGroundLevel:Number;
      
      public var mSideScroll:Number;
      
      public var mVerticalScroll:Number;
      
      public var mTextureClass:Class;
      
      public function LevelBackground(param1:LevelMain, param2:String, param3:Number)
      {
         super();
         this.mLevelMain = param1;
         this.mSideScroll = 0;
         this.mVerticalScroll = 0;
         this.mLevelBackgroundInformation = LevelThemeBackgrounds.getBackground(param2);
         this.mLayerClips = new Array();
         this.mBackground = new MovieClip();
         this.mForeground = new MovieClip();
         this.mSkyAndGround = new Sprite();
         this.setGroundLevel(param3);
         this.createSkyAndGround();
         this.mTextureClass = AssetCache.getAssetFromCache(this.mLevelBackgroundInformation.mTextureName);
         var _loc4_:Class = AssetCache.getAssetFromCache(this.mLevelBackgroundInformation.mName);
         var _loc5_:int = 0;
         while(_loc5_ < this.mLevelBackgroundInformation.mLayers.length)
         {
            this.mLayerClips[_loc5_] = new LevelBackgroundLayer(_loc4_,this.mLevelBackgroundInformation.mLayers[_loc5_].mName,this.mLevelBackgroundInformation.mLayers[_loc5_].mSpeed,this.mLevelBackgroundInformation.mLayers[_loc5_].mForeground);
            if(this.mLayerClips[_loc5_].mForeground)
            {
               this.mForeground.addChild(this.mLayerClips[_loc5_]);
            }
            else
            {
               this.mBackground.addChild(this.mLayerClips[_loc5_]);
            }
            _loc5_++;
         }
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         if(!this.mLevelBackgroundInformation || !this.mLevelMain)
         {
            return;
         }
         if(!LevelThemeBackgrounds.getBackground(param1) || this.mLevelBackgroundInformation.mName.toUpperCase() == param1.toUpperCase())
         {
            return;
         }
         this.mLevelBackgroundInformation = LevelThemeBackgrounds.getBackground(param1);
         while(this.mForeground.numChildren > 0)
         {
            this.mForeground.removeChildAt(0);
         }
         while(this.mBackground.numChildren > 0)
         {
            this.mBackground.removeChildAt(0);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mLayerClips.length)
         {
            (this.mLayerClips[_loc2_] as LevelBackgroundLayer).clear();
            this.mLayerClips[_loc2_] = null;
            _loc2_++;
         }
         this.mLayerClips = new Array();
         this.createSkyAndGround();
         this.mTextureClass = AssetCache.getAssetFromCache(this.mLevelBackgroundInformation.mTextureName);
         var _loc3_:Class = AssetCache.getAssetFromCache(this.mLevelBackgroundInformation.mName);
         _loc2_ = 0;
         while(_loc2_ < this.mLevelBackgroundInformation.mLayers.length)
         {
            this.mLayerClips[_loc2_] = new LevelBackgroundLayer(_loc3_,this.mLevelBackgroundInformation.mLayers[_loc2_].mName,this.mLevelBackgroundInformation.mLayers[_loc2_].mSpeed,this.mLevelBackgroundInformation.mLayers[_loc2_].mForeground);
            if(this.mLayerClips[_loc2_].mForeground)
            {
               this.mForeground.addChild(this.mLayerClips[_loc2_]);
            }
            else
            {
               this.mBackground.addChild(this.mLayerClips[_loc2_]);
            }
            _loc2_++;
         }
         this.updateScrollAndScale(this.mSideScroll,this.mVerticalScroll);
      }
      
      public function playBackgroundMusic() : void
      {
         SoundEngine.playSound(this.mLevelBackgroundInformation.mAmbientSoundName,SoundEngine.DEFAULT_CHANNEL_NAME,999);
      }
      
      public function clear() : void
      {
         if(SHOW_BACKGROUNDS)
         {
            this.mLevelMain.removeChild(this.mBackground);
         }
         this.mLevelMain.removeChild(this.mSkyAndGround);
         if(SHOW_BACKGROUNDS)
         {
            this.mLevelMain.removeChild(this.mForeground);
         }
         while(this.mForeground.numChildren > 0)
         {
            this.mForeground.removeChildAt(0);
         }
         while(this.mBackground.numChildren > 0)
         {
            this.mBackground.removeChildAt(0);
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.mLayerClips.length)
         {
            (this.mLayerClips[_loc1_] as LevelBackgroundLayer).clear();
            this.mLayerClips[_loc1_] = null;
            _loc1_++;
         }
         this.mLayerClips = null;
         this.mBackground = null;
         this.mForeground = null;
         this.mSkyAndGround.graphics.clear();
         this.mSkyAndGround = null;
         this.mTextureClass = null;
      }
      
      public function setGroundLevel(param1:Number) : void
      {
         this.mGroundLevel = param1;
         this.mBackground.y = this.mGroundLevel;
         this.mForeground.y = this.mGroundLevel;
         this.mSkyAndGround.y = this.mGroundLevel;
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.mSideScroll = param1;
         this.mVerticalScroll = param2;
         var _loc3_:int = 0;
         while(_loc3_ < this.mLayerClips.length)
         {
            (this.mLayerClips[_loc3_] as LevelBackgroundLayer).setSideScroll(this.mSideScroll,this.mVerticalScroll);
            _loc3_++;
         }
         this.mSkyAndGround.scaleX = 1 / LevelCamera.smLevelScale;
         this.mSkyAndGround.scaleY = 1 / LevelCamera.smLevelScale;
         this.mSkyAndGround.x = -LevelCamera.smLevelX * (1 / LevelCamera.smLevelScale);
         this.mSkyAndGround.y = this.mGroundLevel - this.mVerticalScroll;
      }
      
      public function createSkyAndGround() : void
      {
         this.mSkyAndGround.graphics.clear();
         this.mSkyAndGround.graphics.lineStyle(1);
         this.mSkyAndGround.graphics.beginFill(this.mLevelBackgroundInformation.mColorGround,1);
         this.mSkyAndGround.graphics.drawRect(-5,0,LevelMain.LEVEL_WIDTH_PIXEL + 10,LevelMain.LEVEL_HEIGHT_PIXEL);
         this.mSkyAndGround.graphics.beginFill(this.mLevelBackgroundInformation.mColorSky,1);
         this.mSkyAndGround.graphics.drawRect(-5,-LevelMain.LEVEL_HEIGHT_PIXEL * 2,LevelMain.LEVEL_WIDTH_PIXEL + 10,LevelMain.LEVEL_HEIGHT_PIXEL * 2);
      }
   }
}
