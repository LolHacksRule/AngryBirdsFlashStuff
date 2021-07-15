package com.angrybirds.sfx
{
   import com.rovio.tween.ISimpleTween;
   import com.rovio.assets.AssetCache;
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
      
      public function Star(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case TYPE_STAR:
               _loc3_ = this.randRange(0,3);
               break;
            case TYPE_SMOKE:
               _loc3_ = this.randRange(4,6);
               break;
            case TYPE_COIN:
               _loc3_ = this.randRange(7,9);
               break;
            case TYPE_ALL:
               _loc3_ = this.randRange(0,6);
         }
         switch(_loc3_)
         {
            case 0:
               _loc4_ = "P_STAR_4";
               break;
            case 1:
               _loc4_ = "P_STAR_3";
               break;
            case 2:
               _loc4_ = "P_STAR_2";
               break;
            case 3:
               _loc4_ = "P_STAR_1";
               break;
            case 4:
               _loc4_ = "P_SMOKE_3";
               break;
            case 5:
               _loc4_ = "P_SMOKE_2";
               break;
            case 6:
               _loc4_ = "P_SMOKE_1";
               break;
            case 7:
            case 8:
            case 9:
               _loc4_ = "P_COIN_1";
         }
         this.mStarSprite = this.newSpriteFromAsset(_loc4_);
         addChild(this.mStarSprite);
         this.mouseEnabled = false;
         this.mStarSprite.x = -this.mStarSprite.width / 2;
         this.mStarSprite.y = -this.mStarSprite.height / 2;
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
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
      
      public function newSpriteFromAsset(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = AssetCache.getAssetFromCache(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set localAnchorA(param1:ISimpleTween) : void
      {
         this.mScaleTween = param1;
      }
      
      public function get localAnchorA() : ISimpleTween
      {
         return this.mScaleTween;
      }
      
      public function get vx() : Number
      {
         return this.mVX;
      }
      
      public function set vx(param1:Number) : void
      {
         this.mVX = param1;
      }
      
      public function get vy() : Number
      {
         return this.mVY;
      }
      
      public function set vy(param1:Number) : void
      {
         this.mVY = param1;
      }
   }
}
