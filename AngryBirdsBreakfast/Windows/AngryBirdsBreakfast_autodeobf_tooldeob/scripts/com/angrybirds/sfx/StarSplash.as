package com.angrybirds.sfx
{
   import com.rovio.tween.TweenManager;
   import com.angrybirds.AngryBirdsEngine;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class StarSplash extends Sprite
   {
      
      public static const STARSPLASH_LEFT:int = 0;
      
      public static const STARSPLASH_CENTER:int = 1;
      
      public static const STARSPLASH_RIGHT:int = 2;
      
      public static const STARSPLASH_BADGE:int = 3;
      
      private static const STAR_TYPE_ALL:String = "all";
      
      public static const STAR_MAX:uint = 40;
       
      
      private const GRAVITY:Number = 0.3;
      
      private const VELOCITY_MAX:Number = 25;
      
      private const VELOCITY_MIN:Number = 10;
      
      private const VELOCITY_MAX_Y:Number = 9;
      
      private var mAreaWidth:int;
      
      private var mAreaHeight:int;
      
      private var mStarPool:Vector.<Star>;
      
      private var mActiveStars:Vector.<Star>;
      
      private var mSplash:Point;
      
      private var mStarPos:int;
      
      public function StarSplash(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc10_:Star = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         super();
         this.mAreaWidth = param1;
         this.mAreaHeight = param2;
         var _loc8_:Number = Math.min(AngryBirdsEngine.sHeightScale,AngryBirdsEngine.sWidthScale);
         var _loc9_:Number = Math.max(AngryBirdsEngine.sHeightScale,AngryBirdsEngine.sWidthScale);
         param3 /= AngryBirdsEngine.sWidthScale;
         param4 /= AngryBirdsEngine.sHeightScale;
         this.mStarPos = param5;
         this.mSplash = new Point(param3,param4);
         this.mStarPool = new Vector.<Star>(0);
         this.mActiveStars = new Vector.<Star>(0);
         var _loc13_:int = 0;
         while(_loc13_ < param6)
         {
            (_loc10_ = new Star(Math.random() * 40 + 10,param7)).x = -2000;
            _loc10_.y = -2000;
            this.addChild(_loc10_);
            this.mStarPool[_loc13_] = _loc10_;
            _loc13_++;
         }
         this.scaleX = _loc9_;
         this.scaleY = _loc9_;
      }
      
      public function clean() : void
      {
         var _loc1_:Star = null;
         while(this.mStarPool.length > 0)
         {
            _loc1_ = this.mStarPool.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         while(this.mActiveStars.length > 0)
         {
            _loc1_ = this.mActiveStars.shift();
            if(_loc1_.parent == this)
            {
               this.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.mStarPool = new Vector.<Star>(0);
         this.mActiveStars = new Vector.<Star>(0);
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc5_:Star = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Star = null;
         param1 /= 20;
         while(this.mStarPool.length > 0)
         {
            _loc5_ = this.mStarPool.shift();
            _loc6_ = Math.random() * (this.VELOCITY_MAX - this.VELOCITY_MIN) + this.VELOCITY_MIN;
            if(this.mStarPos == STARSPLASH_LEFT)
            {
               _loc7_ = -(Math.PI / 2) * Math.random();
               _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
            }
            else if(this.mStarPos == STARSPLASH_CENTER)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
            }
            else if(this.mStarPos == STARSPLASH_RIGHT)
            {
               _loc7_ = Math.PI / 2 * Math.random();
               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
            }
            else if(this.mStarPos == STARSPLASH_BADGE)
            {
               _loc7_ = Math.PI * (Math.random() - 0.5) * 0.5;
               _loc8_ = Math.sin(_loc7_ + Math.PI);
               _loc9_ = Math.cos(_loc7_ + Math.PI);
               _loc12_ = this.VELOCITY_MIN / 2;
               _loc13_ = this.VELOCITY_MAX / 2;
               _loc6_ = Math.random() * (_loc13_ - _loc12_) + _loc12_;
            }
            _loc5_.vx = _loc8_ * _loc6_;
            _loc5_.vy = _loc9_ * _loc6_;
            _loc5_.x = this.mSplash.x;
            _loc5_.y = this.mSplash.y;
            this.mActiveStars.push(_loc5_);
            _loc10_ = 0.5 + Math.random() * 1.5;
            _loc11_ = 0.2;
            _loc5_.scaleTween = TweenManager.instance.createTween(_loc5_,{
               "scaleX":_loc11_,
               "scaleY":_loc11_
            },{
               "scaleX":_loc10_,
               "scaleY":_loc10_
            },5);
            _loc5_.scaleTween.play();
         }
         var _loc2_:int = this.mActiveStars.length;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc3_ = false;
            _loc5_ = this.mActiveStars[_loc4_];
            _loc5_.vy += this.GRAVITY * param1;
            if(_loc5_.vy > this.VELOCITY_MAX_Y)
            {
               _loc5_.vy = this.VELOCITY_MAX_Y;
            }
            _loc5_.x += _loc5_.vx * param1;
            _loc5_.y += _loc5_.vy * param1;
            _loc5_.rotation += 5 * param1;
            if(_loc5_.y > this.mAreaHeight + _loc5_.height / 2)
            {
               _loc3_ = true;
            }
            if(this.mActiveStars.length > 0 && _loc3_)
            {
               if((_loc14_ = this.mActiveStars.splice(_loc4_,1)[0]).parent == this)
               {
                  this.removeChild(_loc14_);
               }
               _loc14_.clean();
               _loc5_.x = -2000;
               _loc5_.y = -2000;
            }
            _loc4_--;
         }
      }
   }
}
