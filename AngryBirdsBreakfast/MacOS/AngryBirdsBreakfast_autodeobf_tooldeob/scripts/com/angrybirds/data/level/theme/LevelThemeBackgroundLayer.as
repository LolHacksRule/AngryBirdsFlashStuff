package com.angrybirds.data.level.theme
{
   public class LevelThemeBackgroundLayer
   {
       
      
      protected var mSpriteName:String;
      
      protected var mSpeed:Number;
      
      protected var mScale:Number;
      
      protected var mTileable:Boolean;
      
      protected var mXOffset:Number;
      
      protected var mYOffset:Number;
      
      protected var mForeground:Boolean;
      
      protected var mHighQuality:Boolean;
      
      protected var mParticleEmitters:Vector.<ParticleEmitter>;
      
      protected var mOptional:Boolean;
      
      protected var mColor:String;
      
      public function LevelThemeBackgroundLayer(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.mSpriteName = param1;
         this.mSpeed = param4;
         this.mForeground = param7;
         this.mScale = param3 != 0 ? Number(param3) : Number(1);
         this.mTileable = param8;
         this.mXOffset = param5;
         this.mYOffset = param6;
         this.mOptional = param9;
         this.mColor = param2;
         this.mHighQuality = param10;
         this.mParticleEmitters = new Vector.<ParticleEmitter>();
      }
      
      public function get spriteName() : String
      {
         return this.mSpriteName;
      }
      
      public function get color() : String
      {
         return this.mColor;
      }
      
      public function get speed() : Number
      {
         return this.mSpeed;
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function get xOffset() : Number
      {
         return this.mXOffset;
      }
      
      public function get yOffset() : Number
      {
         return this.mYOffset;
      }
      
      public function get tileable() : Boolean
      {
         return this.mTileable;
      }
      
      public function get highQuality() : Boolean
      {
         return this.mHighQuality;
      }
      
      public function get foreground() : Boolean
      {
         return this.mForeground;
      }
      
      public function get optional() : Boolean
      {
         return this.mOptional;
      }
      
      public function get particleEmitterCount() : int
      {
         return this.mParticleEmitters.length;
      }
      
      public function getParticleEmitter(param1:int) : ParticleEmitter
      {
         return this.mParticleEmitters[param1];
      }
      
      public function initializeParticleEmittersFromXML(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:ParticleEmitter = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new ParticleEmitter();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.isBehindGraphic = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.mParticleEmitters.push(_loc3_);
         }
      }
   }
}
