package com.AngryBirds.LevelPlayer
{
   import com.rovio.factory.RovioUtils;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class LevelParticle extends Sprite
   {
      
      public static const PARTICLE_TYPE_FLOATING_TEXT:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const PARTICLE_TYPE_STATIC_PARTICLE:int = 2;
      
      public static const PARTICLE_TYPE_TRAIL_PARTICLE:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const PARTICLE_NAME_BIRD_TRAIL_BIG:String = "Effect_TrailBig_Bird";
      
      public static const PARTICLE_NAME_BIRD_TRAIL_SPARKLE:String = "Effect_Trail_Sparkle";
      
      public static const PARTICLE_NAME_FLOATING_SCORE:String = "Effect_Floating_Score";
      
      public static const PARTICLE_NAME_FLOATING_TEXT:String = "Effect_Floating_Text";
      
      public static const PARTICLE_NAME_EXPLOSIONS_PARTICLE:String = "Effect_Explosion_Particle";
      
      public static const PARTICLE_NAME_EXPLOSION_CORE:String = "Effect_Explosion_Core";
      
      public static const PARTICLE_NAME_PIG_DESTRUCTION:String = "Effect_Pig_Destruction";
      
      public static const PARTICLE_NAME_PIG_DESTRUCTION_HEADSHOT:String = "Effect_Pig_Destruction_Headshot";
      
      public static const PARTICLE_NAME_BIRD_DESTRUCTION:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_CORE:String = "Effect_Block_Destruction_Core";
      
      public static const PARTICLE_MATERIAL_BIRD_RED:int = 0;
      
      public static const PARTICLE_MATERIAL_BIRD_BLUE:int = 1;
      
      public static const PARTICLE_MATERIAL_BIRD_YELLOW:int = 2;
      
      public static const PARTICLE_MATERIAL_BIRD_GREEN:int = 3;
      
      public static const PARTICLE_MATERIAL_BIRD_WHITE:int = 4;
      
      public static const PARTICLE_MATERIAL_BIRD_BLACK:int = 5;
      
      public static const PARTICLE_MATERIAL_PIGS:int = 6;
      
      public static const PARTICLE_MATERIAL_BLOCKS_WOOD:int = 7;
      
      public static const PARTICLE_MATERIAL_BLOCKS_STONE:int = 8;
      
      public static const PARTICLE_MATERIAL_BLOCKS_ICE:int = 9;
      
      public static const PARTICLE_MATERIAL_BLOCKS_SNOW:int = 10;
      
      public static const PARTICLE_MATERIAL_BLOCKS_MISC:int = 11;
      
      public static const PARTICLE_MATERIAL_TEXT_RED:int = 12;
      
      public static const PARTICLE_MATERIAL_TEXT_BLUE:int = 13;
      
      public static const PARTICLE_MATERIAL_TEXT_YELLOW:int = 14;
      
      public static const PARTICLE_MATERIAL_TEXT_GREEN:int = 15;
      
      public static const PARTICLE_MATERIAL_TEXT_WHITE:int = 16;
      
      public static const PARTICLE_MATERIAL_TEXT_BLACK:int = 17;
      
      public static const BITMAP_CACHING_ENABLED:Boolean = true;
      
      private static var particleCache:Array = null;
       
      
      public var mParticleType:int;
      
      public var mParticleGroupIndex:int;
      
      public var mParticleName:String;
      
      public var mLevelParticles:LevelParticles;
      
      public var mTimer:Number;
      
      public var mSpeedY:Number;
      
      public var mSpeedX:Number;
      
      public var mGravity:Number;
      
      public var mRotation:Number = 0;
      
      public var mLifeTime:Number;
      
      public var mText:String;
      
      public var mMaxY:Number = -1;
      
      public var mParticleMaterial:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public function LevelParticle(param1:LevelParticles, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0)
      {
         super();
         if(particleCache == null)
         {
            particleCache = new Array();
         }
         this.mLevelParticles = param1;
         this.mParticleName = param2;
         this.mParticleType = param4;
         this.mParticleGroupIndex = param3;
         this.mParticleMaterial = param9;
         this.mText = param8;
         this.createVisuals();
         (this.mLevelParticles.mParticleContainers[param3] as DisplayObjectContainer).addChild(this);
         this.mTimer = 0;
         this.mLifeTime = param7;
         this.mX = param5;
         this.mY = param6;
         this.mSpeedX = param10;
         this.mSpeedY = param11;
         this.mRotation = param13;
         this.mGravity = param12;
         this.updateRenderer();
         if(this.mParticleType == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.mMaxY = AngryBirdsSocial.smLevelMain.mLevelBorders.mBorderGround_B2 + this.height * LevelMain.PIXEL_TO_B2_SCALE;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_RED;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_YELLOW;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_BLUE;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_BLACK;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_WHITE;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_GREEN;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return PARTICLE_MATERIAL_PIGS;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_ICE;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_WOOD;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_STONE;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_SNOW;
         }
         return PARTICLE_MATERIAL_BLOCKS_MISC;
      }
      
      public static function getTextMaterialFromEngineMaterial(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_RED;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_YELLOW;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_BLUE;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_BLACK;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_WHITE;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_GREEN;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_GREEN;
         }
         return PARTICLE_MATERIAL_TEXT_WHITE;
      }
      
      public function setSpeed(param1:Number, param2:Number) : void
      {
      }
      
      public function createVisuals() : void
      {
         var _loc1_:Shape = null;
         var _loc2_:DisplayObject = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:TextField = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc3_:int = Math.random() * 100;
         if(this.mParticleName == PARTICLE_NAME_BIRD_TRAIL1)
         {
            addChild(this.createParticle(this.mLevelParticles.mAssetClassBirdTrail1));
         }
         else if(this.mParticleName == PARTICLE_NAME_BIRD_TRAIL2)
         {
            addChild(this.createParticle(this.mLevelParticles.mAssetClassBirdTrail2));
         }
         else if(this.mParticleName == PARTICLE_NAME_BIRD_TRAIL3)
         {
            addChild(this.createParticle(this.mLevelParticles.mAssetClassBirdTrail3));
         }
         else if(this.mParticleName == PARTICLE_NAME_BIRD_TRAIL_BIG)
         {
            addChild(this.createParticle(this.mLevelParticles.mAssetClassBirdTrailSpecial));
         }
         else if(this.mParticleName == PARTICLE_NAME_BIRD_TRAIL_SPARKLE)
         {
            if(false && Math.random() < 0.5)
            {
               addChild(this.createParticle(this.mLevelParticles.mAssetClassBirdTrailSparkle1));
            }
            else
            {
               addChild(this.createParticle(this.mLevelParticles.mAssetClassBirdTrailSparkle2));
            }
         }
         else if(this.mParticleName == PARTICLE_NAME_PIG_DESTRUCTION)
         {
            _loc2_ = new this.mLevelParticles.mAssetClassPigDestruction();
            addChild(_loc2_);
         }
         else if(this.mParticleName == PARTICLE_NAME_PIG_DESTRUCTION_HEADSHOT)
         {
            _loc2_ = new this.mLevelParticles.mAssetClassPigDestructionHeadshot();
            addChild(_loc2_);
         }
         else if(this.mParticleName == PARTICLE_NAME_BLOCK_DESTRUCTION_CORE)
         {
            _loc2_ = new this.mLevelParticles.mAssetClassBlockDestructionCore();
            addChild(_loc2_);
         }
         else if(this.mParticleName == PARTICLE_NAME_EXPLOSION_CORE)
         {
            _loc2_ = new this.mLevelParticles.mAssetClassExplosionCore();
            addChild(_loc2_);
         }
         else if(this.mParticleName == PARTICLE_NAME_EXPLOSIONS_PARTICLE)
         {
            _loc4_ = 1 + _loc3_ % 5;
            _loc5_ = "particle" + _loc4_;
            addChild(this.createParticle(this.mLevelParticles.mAssetClassExplosionParticles,_loc5_));
         }
         else if(this.mParticleName == PARTICLE_NAME_FLOATING_SCORE || this.mParticleName == PARTICLE_NAME_FLOATING_TEXT)
         {
            _loc2_ = new this.mLevelParticles.mAssetClassFloatingText();
            switch(this.mParticleMaterial)
            {
               case PARTICLE_MATERIAL_TEXT_RED:
                  _loc6_ = (_loc2_ as MovieClip).text_red;
                  break;
               case PARTICLE_MATERIAL_TEXT_BLACK:
                  _loc6_ = (_loc2_ as MovieClip).text_black;
                  break;
               case PARTICLE_MATERIAL_TEXT_BLUE:
                  _loc6_ = (_loc2_ as MovieClip).text_blue;
                  break;
               case PARTICLE_MATERIAL_TEXT_GREEN:
                  _loc6_ = (_loc2_ as MovieClip).text_green;
                  break;
               case PARTICLE_MATERIAL_TEXT_YELLOW:
                  _loc6_ = (_loc2_ as MovieClip).text_yellow;
                  break;
               case PARTICLE_MATERIAL_TEXT_WHITE:
               default:
                  _loc6_ = (_loc2_ as MovieClip).text_white;
            }
            _loc6_.text = this.mText;
            addChild(_loc2_);
            _loc7_ = 0;
            while(_loc7_ < (_loc2_ as DisplayObjectContainer).numChildren)
            {
               (_loc2_ as DisplayObjectContainer).getChildAt(_loc7_).visible = false;
               _loc7_++;
            }
            _loc6_.visible = true;
         }
         else if(this.mParticleName == PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES)
         {
            if(this.mParticleMaterial == PARTICLE_MATERIAL_BLOCKS_ICE)
            {
               _loc8_ = 1 + _loc3_ % 6;
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBlockIceDestruction,"particle" + _loc8_);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BLOCKS_SNOW)
            {
               _loc8_ = 1 + _loc3_ % 7;
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBlockSnowDestruction,"particle" + _loc8_);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BLOCKS_WOOD)
            {
               _loc8_ = 1 + _loc3_ % 4;
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBlockWoodDestruction,"particle" + _loc8_);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BLOCKS_STONE)
            {
               _loc8_ = 1 + _loc3_ % 3;
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBlockStoneDestruction,"particle" + _loc8_);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BLOCKS_MISC)
            {
               _loc8_ = 1 + _loc3_ % 5;
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBlockMiscDestruction,"particle" + _loc8_);
            }
            addChild(_loc2_);
            _loc2_.rotation = Math.random() * 360;
         }
         else if(this.mParticleName == PARTICLE_NAME_BIRD_DESTRUCTION)
         {
            _loc2_ = new this.mLevelParticles.mAssetClassBirdDestruction();
            _loc9_ = 1 + _loc3_ % 3;
            if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_RED)
            {
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBirdDestruction,"bird_red" + _loc9_);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_BLACK)
            {
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBirdDestruction,"bird_black" + _loc9_);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_BLUE)
            {
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBirdDestruction,"bird_blue" + _loc9_);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_GREEN)
            {
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBirdDestruction,"bird_green" + _loc9_);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_WHITE)
            {
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBirdDestruction,"bird_white" + _loc9_);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_YELLOW)
            {
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBirdDestruction,"bird_yellow" + _loc9_);
            }
            else
            {
               _loc2_ = this.createParticle(this.mLevelParticles.mAssetClassBirdDestruction,"bird_white" + _loc9_);
            }
            addChild(_loc2_);
            _loc2_.rotation = Math.random() * 360;
         }
         else
         {
            _loc1_ = new Shape();
            _loc1_.graphics.lineStyle(1);
            _loc1_.graphics.beginFill(16711680,1);
            _loc1_.graphics.drawRect(-5,-5,10,10);
            addChild(_loc1_);
         }
      }
      
      public function createParticle(param1:Class, param2:String = null) : DisplayObject
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Rectangle = null;
         var _loc9_:Matrix = null;
         if(!BITMAP_CACHING_ENABLED)
         {
            if(param2)
            {
               return (new param1() as DisplayObjectContainer).getChildByName(param2);
            }
            return new param1() as DisplayObject;
         }
         var _loc3_:String = param1.toString();
         if(param2 != null)
         {
            _loc3_ += ":" + param2;
         }
         var _loc4_:BitmapData = null;
         var _loc5_:Array;
         if((_loc5_ = particleCache[_loc3_]) == null)
         {
            _loc7_ = new param1();
            if(param2 != null)
            {
               _loc7_ = (_loc7_ as DisplayObjectContainer).getChildByName(param2);
            }
            _loc4_ = new BitmapData(_loc7_.width,_loc7_.height,true,0);
            _loc8_ = _loc7_.getRect(_loc7_);
            (_loc9_ = new Matrix()).translate(-_loc8_.x,-_loc8_.y);
            _loc4_.draw(_loc7_,_loc9_);
            _loc5_ = new Array(_loc4_,_loc8_.x,_loc8_.y);
            particleCache[_loc3_] = _loc5_;
         }
         var _loc6_:Bitmap;
         (_loc6_ = new Bitmap(_loc5_[0])).x = _loc5_[1];
         _loc6_.y = _loc5_[2];
         _loc6_.smoothing = true;
         return _loc6_;
      }
      
      public function updateRenderer() : void
      {
         x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.mTimer += param1;
         var _loc2_:Boolean = false;
         if(this.mParticleType == PARTICLE_TYPE_FLOATING_TEXT)
         {
            this.updateLocation(param1);
            if(this.mLifeTime > 0)
            {
               _loc3_ = 1;
               if(this.mParticleName == PARTICLE_NAME_FLOATING_SCORE)
               {
                  _loc3_ = 0.5 + int(this.mText) / 5000;
                  _loc3_ = 0.5 + _loc3_ * RovioUtils.exponentialMove(this.mTimer / this.mLifeTime);
               }
               else if(this.mParticleName == PARTICLE_NAME_FLOATING_TEXT)
               {
                  _loc3_ = 1.2 + 0.4 * RovioUtils.exponentialMove(this.mTimer / this.mLifeTime);
               }
               scaleX = _loc3_;
               scaleY = _loc3_;
            }
            _loc2_ = true;
         }
         else if(this.mParticleType == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.updateLocation(param1);
            if(this.mParticleName == PARTICLE_NAME_EXPLOSIONS_PARTICLE)
            {
               alpha = Math.max(0,Math.min(1,2 * RovioUtils.exponentialMove((this.mLifeTime - this.mTimer) / this.mLifeTime,false)));
               _loc4_ = Math.atan2(-this.mSpeedY,this.mSpeedX) * (180 / Math.PI);
               scaleX = Math.max(0.2,alpha);
               scaleY = Math.max(0.2,alpha);
               rotation = 360 - _loc4_;
            }
            _loc2_ = true;
            if(this.mMaxY > 0 && this.mY > this.mMaxY)
            {
               return false;
            }
         }
         if(this.mLifeTime > 0 && this.mTimer >= this.mLifeTime)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function updateLocation(param1:Number) : void
      {
         this.mSpeedY += param1 * this.mGravity / 1000;
         this.mY += this.mSpeedY * param1 / 1000;
         this.mX += this.mSpeedX * param1 / 1000;
         if(this.mRotation != 0)
         {
            rotation += this.mRotation * param1 / 1000;
         }
      }
      
      public function kill() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         (this.mLevelParticles.mParticleContainers[this.mParticleGroupIndex] as DisplayObjectContainer).removeChild(this);
      }
   }
}
