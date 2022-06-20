package com.angrybirds.sfx
{
   import com.rovio.assets.AssetCache;
   import com.rovio.tween.ISimpleTween;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Star extends Sprite
   {
      
      public static const TYPE_STAR:String = "star";
      
      public static const TYPE_SMOKE:String = "smoke";
      
      public static const TYPE_COIN:String = "coin";
      
      public static const TYPE_ALL:String = "all";
       
      
      private var mStarSprite:Sprite;
      
      private var mVX:Number;
      
      private var mVY:Number;
      
      private var mScaleTween:ISimpleTween;
      
      public function Star(radius:Number, type:String = "all")
      {
         var randomSprite:int = 0;
         var assetName:String = null;
         super();
         switch(type)
         {
            case TYPE_STAR:
               randomSprite = this.randRange(0,3);
               break;
            case TYPE_SMOKE:
               randomSprite = this.randRange(4,6);
               break;
            case TYPE_COIN:
               randomSprite = this.randRange(7,9);
               break;
            case TYPE_ALL:
               randomSprite = this.randRange(0,6);
         }
         switch(randomSprite)
         {
            case 0:
               assetName = "P_STAR_4";
               break;
            case 1:
               assetName = "P_STAR_3";
               break;
            case 2:
               assetName = "P_STAR_2";
               break;
            case 3:
               assetName = "P_STAR_1";
               break;
            case 4:
               assetName = "P_SMOKE_3";
               break;
            case 5:
               assetName = "P_SMOKE_2";
               break;
            case 6:
               assetName = "P_SMOKE_1";
               break;
            case 7:
            case 8:
            case 9:
               assetName = "P_COIN_1";
         }
         this.mStarSprite = this.newSpriteFromAsset(assetName);
         addChild(this.mStarSprite);
         this.mouseEnabled = false;
         this.mStarSprite.x = -this.mStarSprite.width / 2;
         this.mStarSprite.y = -this.mStarSprite.height / 2;
      }
      
      private function randRange(minNum:Number, maxNum:Number) : Number
      {
         return Math.floor(Math.random() * (maxNum - minNum + 1)) + minNum;
      }
      
      public function clean() : void
      {
         if(this.mScaleTween)
         {
            this.mScaleTween.stop();
            this.mScaleTween = null;
         }
         removeChild(this.mStarSprite);
         this.mStarSprite = null;
      }
      
      public function newSpriteFromAsset(assetName:String) : MovieClip
      {
         var image:MovieClip = null;
         var assetCls:Class = AssetCache.getAssetFromCache(assetName);
         image = new assetCls();
         image.x = image.width / 2;
         image.y = image.height / 2;
         return image;
      }
      
      public function set scaleTween(val:ISimpleTween) : void
      {
         this.mScaleTween = val;
      }
      
      public function get scaleTween() : ISimpleTween
      {
         return this.mScaleTween;
      }
      
      public function get vx() : Number
      {
         return this.mVX;
      }
      
      public function set vx(value:Number) : void
      {
         this.mVX = value;
      }
      
      public function get vy() : Number
      {
         return this.mVY;
      }
      
      public function set vy(value:Number) : void
      {
         this.mVY = value;
      }
   }
}
