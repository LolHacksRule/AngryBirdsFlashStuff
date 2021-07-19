package com.angrybirds.data.level.item
{
   public class LevelItemSpaceParticleLua extends LevelItemSpace
   {
       
      
      protected var mSprites:Array;
      
      protected var mSheet:String;
      
      protected var mMinVel:Number;
      
      protected var mMaxVel:Number;
      
      protected var mMinAngleVel:Number;
      
      protected var mMaxAngleVel:Number;
      
      protected var mMinScaleBegin:Number;
      
      protected var mMaxScaleBegin:Number;
      
      protected var mMinScaleEnd:Number;
      
      protected var mMaxScaleEnd:Number;
      
      protected var mLifeTime:Number;
      
      protected var mGravityX:Number;
      
      protected var mGravityY:Number;
      
      protected var mMinAngleEmitter:Number;
      
      protected var mMaxAngleEmitter:Number;
      
      protected var mMinAngle:Number;
      
      protected var mMaxAngle:Number;
      
      protected var mAmount:Number;
      
      protected var mAnimation:String;
      
      private var mUseAbsoluteAngle:Boolean;
      
      public function LevelItemSpaceParticleLua(luaObject:Object, itemType:int, material:LevelItemMaterial, resourcePathsSound:LevelItemSoundResource, newScore:int, front:Boolean = false)
      {
         super(luaObject,itemType,material,resourcePathsSound,newScore,front);
         this.mSprites = this.readArray(luaObject.sprites);
         this.mSheet = luaObject.sheet;
         this.mMinVel = luaObject.minVel;
         this.mMaxVel = luaObject.maxVel;
         this.mMinAngleVel = luaObject.minAngleVel;
         this.mMaxAngleVel = luaObject.maxAngleVel;
         this.mMinScaleBegin = luaObject.minScaleBegin;
         this.mMaxScaleBegin = luaObject.maxScaleBegin;
         this.mMinScaleEnd = luaObject.minScaleEnd;
         this.mMaxScaleEnd = luaObject.maxScaleEnd;
         this.mLifeTime = luaObject.lifeTime;
         this.mGravityX = luaObject.gravityX;
         this.mGravityY = luaObject.gravityY;
         this.mMinAngleEmitter = luaObject.minAngleEmitter;
         this.mMaxAngleEmitter = luaObject.maxAngleEmitter;
         this.mMinAngle = luaObject.minAngle;
         this.mMaxAngle = luaObject.maxAngle;
         this.mUseAbsoluteAngle = luaObject.useAbsoluteAngle;
         this.mAmount = 10;
         if(luaObject.amount)
         {
            this.mAmount = luaObject.amount;
         }
         this.mAnimation = luaObject.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var frameTime:Number = NaN;
         var frameName:String = null;
         var frameList:Array = [];
         var frameTimeStamps:Array = [];
         if(this.mSprites.length > 0)
         {
            frameTime = this.mLifeTime * 1000 / this.mSprites.length;
            for each(frameName in this.mSprites)
            {
               frameList.push(frameName);
               frameTimeStamps.push(frameTime);
            }
         }
         return [["1",frameList,frameTimeStamps]];
      }
      
      protected function get spritesLength() : int
      {
         if(this.mSprites)
         {
            return this.mSprites.length;
         }
         return 0;
      }
      
      protected function getSprite(index:int) : String
      {
         return this.mSprites[index];
      }
      
      private function readArray(data:*) : Array
      {
         var arrayFromObject:Array = null;
         var o:Object = null;
         if(data is String)
         {
            return [data];
         }
         if(data is Array)
         {
            return data;
         }
         if(data is Object)
         {
            arrayFromObject = [];
            for each(o in data)
            {
               arrayFromObject.push(o);
            }
            return arrayFromObject;
         }
         return [];
      }
      
      public function get lifeTime() : Number
      {
         return this.mLifeTime;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.mMinScaleBegin;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.mMaxScaleBegin;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.mMinScaleEnd;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.mMaxScaleEnd;
      }
      
      public function get minAngle() : Number
      {
         return this.mMinAngle;
      }
      
      public function get maxAngle() : Number
      {
         return this.mMaxAngle;
      }
      
      public function get minAngleVel() : Number
      {
         return this.mMinAngleVel;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.mMaxAngleVel;
      }
      
      public function get amount() : Number
      {
         return this.mAmount;
      }
      
      public function set amount(value:Number) : void
      {
         this.mAmount = value;
      }
      
      public function get minVel() : Number
      {
         return this.mMinVel;
      }
      
      public function get maxVel() : Number
      {
         return this.mMaxVel;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.mMinAngleEmitter;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.mMaxAngleEmitter;
      }
      
      public function get useAbsoluteAngle() : Boolean
      {
         return this.mUseAbsoluteAngle;
      }
      
      public function get animation() : String
      {
         return this.mAnimation;
      }
      
      public function get gravityX() : Number
      {
         return this.mGravityX;
      }
      
      public function get gravityY() : Number
      {
         return this.mGravityY;
      }
   }
}
