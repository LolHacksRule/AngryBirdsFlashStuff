package com.angrybirds.engine.particles
{
   import com.rovio.graphics.Animation;
   import com.rovio.graphics.TextureManager;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.graphics.AnimationManager;
   import starling.textures.Texture;
   import com.angrybirds.engine.objects.LevelObject;
   import starling.display.Image;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import com.angrybirds.engine.ScoreRenderer;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.AngryBirdsEngine;
   import each.RovioUtils;
   
   public class LevelParticle
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
      
      public static const PARTICLE_NAME_BIRD_TRAIL_REBEL:String = "Effect_TrailBig_Bird_Rebel";
      
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
      
      public static const PARTICLE_MATERIAL_BIRD_MIGHTY_EAGLE:int = 18;
       
      
      public var mParticleType:int;
      
      public var mParticleGroupIndex:int;
      
      public var mParticleName:String;
      
      public var mTimer:Number;
      
      public var mSpeedY:Number;
      
      public var mSpeedX:Number;
      
      public var mGravity:Number;
      
      public var mRotation:Number = 0;
      
      public var mScale:Number;
      
      public var mLifeTime:Number;
      
      public var mText:String;
      
      public var mMaxY:Number = -1;
      
      public var mParticleMaterial:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var mDisplayObject:Sprite;
      
      private var mScoreRenderer:ScoreRenderer;
      
      private var mAutoPlayFps:int;
      
      private var mDefaultAutoPlayFps:int;
      
      private var mDefaultClearAfterPlay:Boolean;
      
      private var mAnimation:Animation;
      
      private var mClearAfterPlay:Boolean;
      
      private var mAnimationManager:AnimationManager;
      
      private var mTextureManager:TextureManager;
      
      private var mLevelObject:LevelObject;
      
      public function LevelParticle(param1:AnimationManager, param2:TextureManager, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.mDisplayObject = new Sprite();
         super();
         this.mAnimationManager = param1;
         this.mTextureManager = param2;
         this.mParticleName = param3;
         this.mParticleType = param5;
         this.mParticleGroupIndex = param4;
         this.mParticleMaterial = param10;
         this.mDefaultAutoPlayFps = param16;
         this.mDefaultClearAfterPlay = param17;
         this.mText = param9;
         this.mTimer = 0;
         this.mLifeTime = param8;
         this.mX = param6;
         this.mY = param7;
         this.mScale = param15;
         this.mSpeedX = param11;
         this.mSpeedY = param12;
         this.mRotation = param14;
         this.mGravity = param13;
         this.createVisuals();
         this.updateRenderer();
         if(this.mParticleType == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.mMaxY = AngryBirdsEngine.smLevelMain.borders.ground + this.mDisplayObject.height * LevelMain.PIXEL_TO_B2_SCALE;
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
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_MIGHTY_EAGLE;
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
      
      public function get displayObject() : DisplayObject
      {
         return this.mDisplayObject;
      }
      
      public function setSpeed(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.mParticleName;
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:Animation = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         _loc1_ = Math.random() * 100;
         var _loc4_:String = this.getParticleType();
         switch(_loc4_)
         {
            case PARTICLE_NAME_BIRD_TRAIL1:
               this.createParticle("TRAIL_1");
               break;
            case PARTICLE_NAME_BIRD_TRAIL2:
               this.createParticle("TRAIL_2");
               break;
            case PARTICLE_NAME_BIRD_TRAIL3:
               this.createParticle("TRAIL_3");
               break;
            case PARTICLE_NAME_BIRD_TRAIL_BIG:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case PARTICLE_NAME_BIRD_TRAIL_REBEL:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case PARTICLE_NAME_BIRD_TRAIL_SPARKLE:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case PARTICLE_NAME_PIG_DESTRUCTION:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case PARTICLE_NAME_PIG_DESTRUCTION_HEADSHOT:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_CORE:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case PARTICLE_NAME_EXPLOSION_CORE:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case PARTICLE_NAME_EXPLOSIONS_PARTICLE:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case PARTICLE_NAME_FLOATING_SCORE:
            case PARTICLE_NAME_FLOATING_TEXT:
               if(parseInt(this.mText) == 10000 || parseInt(this.mText) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.mParticleMaterial)
                  {
                     case PARTICLE_MATERIAL_TEXT_RED:
                        _loc9_ = 16058683;
                        break;
                     case PARTICLE_MATERIAL_TEXT_BLUE:
                        _loc9_ = 55294;
                        break;
                     case PARTICLE_MATERIAL_TEXT_GREEN:
                        _loc9_ = 1878602;
                        break;
                     case PARTICLE_MATERIAL_TEXT_BLACK:
                        _loc9_ = 3552822;
                        break;
                     case PARTICLE_MATERIAL_TEXT_WHITE:
                        break;
                     case PARTICLE_MATERIAL_TEXT_YELLOW:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.mText) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.mAnimationManager.getAnimation("NUMBERS");
                  this.mScoreRenderer = new ScoreRenderer(_loc2_,_loc3_,true);
                  this.mScoreRenderer.renderScore(parseInt(this.mText));
                  this.mDisplayObject.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.mAnimationManager.getAnimation("NUMBERS");
                  this.mScoreRenderer = new ScoreRenderer(_loc2_,_loc3_);
                  this.mScoreRenderer.renderScore(parseInt(this.mText));
                  this.mDisplayObject.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.mParticleMaterial)
               {
                  case PARTICLE_MATERIAL_BLOCKS_ICE:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case PARTICLE_MATERIAL_BLOCKS_SNOW:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case PARTICLE_MATERIAL_BLOCKS_WOOD:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case PARTICLE_MATERIAL_BLOCKS_STONE:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case PARTICLE_MATERIAL_BLOCKS_MISC:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.mDisplayObject)
               {
                  this.mDisplayObject.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case PARTICLE_NAME_BIRD_DESTRUCTION:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.mParticleMaterial)
               {
                  case PARTICLE_MATERIAL_BIRD_RED:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case PARTICLE_MATERIAL_BIRD_BLACK:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case PARTICLE_MATERIAL_BIRD_BLUE:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case PARTICLE_MATERIAL_BIRD_GREEN:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case PARTICLE_MATERIAL_BIRD_WHITE:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case PARTICLE_MATERIAL_BIRD_YELLOW:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case PARTICLE_MATERIAL_BIRD_MIGHTY_EAGLE:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.mDisplayObject)
               {
                  this.mDisplayObject.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.mDefaultAutoPlayFps,this.mDefaultClearAfterPlay);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:PivotTexture = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.mClearAfterPlay = param4;
         var _loc7_:Number = 1;
         this.mAnimation = this.mAnimationManager.getAnimation(param1);
         this.mClearAfterPlay = param4;
         if(this.mAnimation)
         {
            _loc8_ = this.mAnimation.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.mTextureManager.getTexture(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
            _loc8_ = new Image(_loc6_,false);
         }
         this.mAutoPlayFps = param3;
         _loc8_.scaleX *= this.mScale;
         _loc8_.scaleY *= this.mScale;
         this.mDisplayObject.addChild(_loc8_);
         _loc8_.x = -this.mDisplayObject.width / 2;
         _loc8_.y = -this.mDisplayObject.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.mDisplayObject)
         {
            this.mDisplayObject.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
            this.mDisplayObject.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         }
      }
      
      public function attachToLevelObject(param1:LevelObject) : void
      {
         this.mLevelObject = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.mTimer += param1;
         var _loc2_:Boolean = false;
         if(this.mLevelObject)
         {
            if(this.mLevelObject.sprite == null || this.mLevelObject.levelItem == null)
            {
               return false;
            }
            this.mX = this.mLevelObject.getBody().GetPosition().x;
            this.mY = this.mLevelObject.getBody().GetPosition().y;
         }
         if(this.mAutoPlayFps > 0 && this.mAnimation)
         {
            _loc3_ = 15;
            if((_loc4_ = this.mTimer / 1000 / (1 / _loc3_)) < this.mAnimation.frameCount)
            {
               _loc5_ = this.mAnimation.getFrame(_loc4_);
               this.mDisplayObject.removeChildren(0,-1,true);
               this.mDisplayObject.addChild(_loc5_);
               _loc5_.scaleX *= this.mScale;
               _loc5_.scaleY *= this.mScale;
            }
            else if(this.mClearAfterPlay)
            {
               this.mDisplayObject.removeChildren(0,-1,true);
            }
         }
         if(this.mParticleType == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.updateLocation(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.mMaxY > 0 && this.mY > this.mMaxY)
            {
               return false;
            }
         }
         else
         {
            this.updateLocation(param1);
            _loc2_ = this.updateParticles(param1);
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
            this.mDisplayObject.rotation += this.mRotation * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.mParticleType == PARTICLE_TYPE_FLOATING_TEXT)
         {
            if(this.mLifeTime > 0)
            {
               _loc2_ = 1;
               if(this.mParticleName == PARTICLE_NAME_FLOATING_TEXT)
               {
                  if((_loc4_ = this.mTimer / this.mLifeTime) <= 0.2)
                  {
                     _loc3_ = _loc4_ / 0.2;
                  }
                  else if(_loc4_ >= 0.8)
                  {
                     _loc3_ = 1 - (_loc4_ - 0.8) / 0.2;
                  }
                  else
                  {
                     _loc3_ = 1;
                  }
                  _loc2_ = _loc3_ * (0.5 + int(this.mText) / 5000);
               }
               this.mDisplayObject.scaleX = _loc2_;
               this.mDisplayObject.scaleY = _loc2_;
            }
            return true;
         }
         if(this.mParticleType == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.mParticleName == PARTICLE_NAME_EXPLOSIONS_PARTICLE)
            {
               this.mDisplayObject.alpha = Math.max(0,Math.min(1,2 * RovioUtils.exponentialMove((this.mLifeTime - this.mTimer) / this.mLifeTime,false)));
               _loc5_ = Math.atan2(-this.mSpeedY,this.mSpeedX) * (180 / Math.PI);
               this.mDisplayObject.scaleX = Math.max(0.2,this.mDisplayObject.alpha);
               this.mDisplayObject.scaleY = Math.max(0.2,this.mDisplayObject.alpha);
               this.mDisplayObject.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.mParticleName == PARTICLE_NAME_BIRD_DESTRUCTION || this.mParticleName == PARTICLE_NAME_BLOCK_DESTRUCTION_CORE)
            {
               this.mDisplayObject.scaleX = this.mDisplayObject.scaleY = 0.2 + (this.mLifeTime - this.mTimer) / this.mLifeTime * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.mScoreRenderer)
         {
            this.mScoreRenderer.clear();
            this.mScoreRenderer = null;
         }
         if(this.mDisplayObject)
         {
            this.mDisplayObject.dispose();
            this.mDisplayObject = null;
         }
         if(this.mLevelObject)
         {
            this.mLevelObject = null;
         }
      }
   }
}
