package com.angrybirds.engine.particles
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.ScoreRenderer;
   import com.angrybirds.engine.objects.LevelObject;
   import com.rovio.factory.RovioUtils;
   import com.rovio.graphics.Animation;
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.graphics.TextureManager;
   import starling.display.DisplayObject;
   import starling.display.Image;
   import starling.display.Sprite;
   import starling.textures.Texture;
   
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
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_POWERUP:String = "Effect_Block_Destruction_Powerup";
      
      public static const PARTICLE_MATERIAL_NONE:int = -1;
      
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
      
      public static const PARTICLE_MATERIAL_TEXT_PIG_GREEN:int = 16;
      
      public static const PARTICLE_MATERIAL_TEXT_WHITE:int = 17;
      
      public static const PARTICLE_MATERIAL_TEXT_BLACK:int = 18;
      
      public static const PARTICLE_MATERIAL_TEXT_ORANGE:int = 19;
      
      public static const PARTICLE_MATERIAL_TEXT_PINK:int = 20;
      
      public static const PARTICLE_MATERIAL_BIRD_MIGHTY_EAGLE:int = 21;
      
      public static const PARTICLE_MATERIAL_BIRD_PINK:int = 22;
       
      
      public var mParticleType:int;
      
      public var mParticleGroupIndex:int;
      
      public var mParticleName:String;
      
      public var mTimer:Number;
      
      public var mSpeedY:Number;
      
      public var mSpeedX:Number;
      
      public var mGravity:Number;
      
      public var mRotation:Number = 0;
      
      public var mScale:Number;
      
      public var mFloatingScoreFont:String;
      
      public var mLifeTime:Number;
      
      public var mText:String;
      
      public var mMaxY:Number = -1;
      
      public var mParticleMaterial:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      protected var mDisplayObject:Sprite;
      
      private var mScoreRenderer:ScoreRenderer;
      
      private var mAutoPlayFps:Number;
      
      private var mDefaultAutoPlayFps:Number;
      
      private var mDefaultClearAfterPlay:Boolean;
      
      private var mAnimation:Animation;
      
      private var mClearAfterPlay:Boolean;
      
      private var mAnimationManager:AnimationManager;
      
      private var mTextureManager:TextureManager;
      
      private var mLevelObject:LevelObject;
      
      public function LevelParticle(animationManager:AnimationManager, textureManager:TextureManager, newParticleName:String, newParticleGroup:int, newParticleType:int, newX:Number, newY:Number, newLifeTime:Number, newText:String, newMaterial:int, newSpeedX:Number = 0, newSpeedY:Number = 0, newGravity:Number = 0, newRotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:Number = -1, defaultClearAfterPlay:Boolean = false, floatingScoreFont:String = null)
      {
         this.mDisplayObject = new Sprite();
         super();
         this.mAnimationManager = animationManager;
         this.mTextureManager = textureManager;
         this.mParticleName = newParticleName;
         this.mParticleType = newParticleType;
         this.mParticleGroupIndex = newParticleGroup;
         this.mParticleMaterial = newMaterial;
         this.mDefaultAutoPlayFps = defaultAutoPlayFps;
         this.mDefaultClearAfterPlay = defaultClearAfterPlay;
         this.mText = newText;
         this.mTimer = 0;
         this.mLifeTime = newLifeTime;
         this.mX = newX;
         this.mY = newY;
         this.mScale = scale;
         this.mSpeedX = newSpeedX;
         this.mSpeedY = newSpeedY;
         this.mRotation = newRotation;
         this.mGravity = newGravity;
         this.mFloatingScoreFont = floatingScoreFont;
         this.createVisuals();
         this.updateRenderer();
         if(this.mParticleType == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.mMaxY = AngryBirdsEngine.smLevelMain.borders.ground + this.mDisplayObject.height * LevelMain.PIXEL_TO_B2_SCALE;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(name:String) : int
      {
         name = name.toUpperCase();
         if(name.indexOf("BIRD_RED") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_RED;
         }
         if(name.indexOf("BIRD_YELLOW") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_YELLOW;
         }
         if(name.indexOf("BIRD_BLUE") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_BLUE;
         }
         if(name.indexOf("BIRD_BLACK") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_BLACK;
         }
         if(name.indexOf("BIRD_WHITE") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_WHITE;
         }
         if(name.indexOf("BIRD_GREEN") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_GREEN;
         }
         if(name.indexOf("BIRD_WINGMAN") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_RED;
         }
         if(name.indexOf("BIRD_ORANGE") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_YELLOW;
         }
         if(name.indexOf("MIGHTY_EAGLE") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_MIGHTY_EAGLE;
         }
         if(name.indexOf("BIRD_PINK") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_PINK;
         }
         if(name.indexOf("PIG") >= 0)
         {
            return PARTICLE_MATERIAL_PIGS;
         }
         if(name.indexOf("ICE") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_ICE;
         }
         if(name.indexOf("WOOD") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_WOOD;
         }
         if(name.indexOf("STONE") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_STONE;
         }
         if(name.indexOf("SNOW") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_SNOW;
         }
         if(name.indexOf("INVISIBLE") >= 0)
         {
            return PARTICLE_MATERIAL_NONE;
         }
         return PARTICLE_MATERIAL_BLOCKS_MISC;
      }
      
      public static function getTextMaterialFromEngineMaterial(name:String, isLevelGoal:Boolean = false) : int
      {
         if(isLevelGoal)
         {
            return PARTICLE_MATERIAL_TEXT_PIG_GREEN;
         }
         name = name.toUpperCase();
         if(name.indexOf("BIRD_RED") >= 0 || name == "BIRD_WINGMAN")
         {
            return PARTICLE_MATERIAL_TEXT_RED;
         }
         if(name.indexOf("BIRD_YELLOW") >= 0 || name == "POWERUP_BOOMBOX")
         {
            return PARTICLE_MATERIAL_TEXT_YELLOW;
         }
         if(name.indexOf("BIRD_BLUE") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_BLUE;
         }
         if(name.indexOf("BIRD_BLACK") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_BLACK;
         }
         if(name.indexOf("BIRD_WHITE") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_WHITE;
         }
         if(name.indexOf("BIRD_GREEN") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_GREEN;
         }
         if(name.indexOf("BIRD_ORANGE") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_ORANGE;
         }
         if(name.indexOf("BIRD_PINK") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_PINK;
         }
         return PARTICLE_MATERIAL_TEXT_WHITE;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.mDisplayObject;
      }
      
      public function setSpeed(newX:Number, newY:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.mParticleName;
      }
      
      protected function createVisuals() : void
      {
         var rnd:int = 0;
         var sprite:Sprite = null;
         var animation:Animation = null;
         var random:int = 0;
         var particle:String = null;
         var color:int = 0;
         var useColor:* = false;
         var rand:int = 0;
         var number:int = 0;
         rnd = Math.random() * 100;
         var particleType:String = this.getParticleType();
         switch(particleType)
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
               this.createParticle("??");
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
            case PARTICLE_NAME_BLOCK_DESTRUCTION_POWERUP:
               this.createParticle("POWERUP_EFFECT_POTIONCLOUD",null,15,false);
               break;
            case PARTICLE_NAME_EXPLOSION_CORE:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case PARTICLE_NAME_EXPLOSIONS_PARTICLE:
               random = 1 + rnd % 5;
               particle = "particle" + random;
               break;
            case PARTICLE_NAME_FLOATING_SCORE:
            case PARTICLE_NAME_FLOATING_TEXT:
               color = 16777215;
               if(this.mFloatingScoreFont)
               {
                  switch(this.mFloatingScoreFont)
                  {
                     case "FONT_INGAME_MULTIP_SCORE_1":
                        color = 16705792;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_2":
                        color = 11806719;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_3":
                        color = 7201353;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_4":
                        color = 5692155;
                  }
               }
               else
               {
                  switch(this.mParticleMaterial)
                  {
                     case PARTICLE_MATERIAL_TEXT_RED:
                        color = 16058683;
                        break;
                     case PARTICLE_MATERIAL_TEXT_BLUE:
                        color = 55294;
                        break;
                     case PARTICLE_MATERIAL_TEXT_GREEN:
                        color = 1878602;
                        break;
                     case PARTICLE_MATERIAL_TEXT_PIG_GREEN:
                        color = 7201353;
                        break;
                     case PARTICLE_MATERIAL_TEXT_BLACK:
                        color = 3552822;
                        break;
                     case PARTICLE_MATERIAL_TEXT_WHITE:
                        break;
                     case PARTICLE_MATERIAL_TEXT_YELLOW:
                        color = 16705792;
                        break;
                     case PARTICLE_MATERIAL_TEXT_ORANGE:
                        color = 16763136;
                        break;
                     case PARTICLE_MATERIAL_TEXT_PINK:
                        color = 16168904;
                  }
               }
               sprite = new Sprite();
               useColor = color != 16777215;
               animation = this.mAnimationManager.getAnimation("NUMBERS");
               this.mScoreRenderer = new ScoreRenderer(sprite,animation,useColor);
               this.mScoreRenderer.renderScore(parseInt(this.mText));
               this.mDisplayObject.addChild(sprite);
               sprite.scaleX = sprite.scaleY = 0.75;
               if(useColor)
               {
                  sprite.color = color;
                  sprite.flatten();
               }
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.mParticleMaterial)
               {
                  case PARTICLE_MATERIAL_BLOCKS_ICE:
                     rand = 1 + rnd % 5;
                     this.createParticle("PARTICLE_ICE_" + rand);
                     break;
                  case PARTICLE_MATERIAL_BLOCKS_SNOW:
                     rand = 1 + rnd % 5;
                     this.createParticle("??");
                     break;
                  case PARTICLE_MATERIAL_BLOCKS_WOOD:
                     rand = 1 + rnd % 3;
                     this.createParticle("PARTICLE_WOOD_" + rand);
                     break;
                  case PARTICLE_MATERIAL_BLOCKS_STONE:
                     rand = 1 + rnd % 3;
                     this.createParticle("PARTICLE_STONE_" + rand);
                     break;
                  case PARTICLE_MATERIAL_BLOCKS_MISC:
                     this.createParticle("SMOKE_BIG",null,20,true);
               }
               if(this.mDisplayObject)
               {
                  this.mDisplayObject.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case PARTICLE_NAME_BIRD_DESTRUCTION:
               number = 1 + rnd % 3;
               switch(this.mParticleMaterial)
               {
                  case PARTICLE_MATERIAL_BIRD_RED:
                     this.createParticle("PARTICLE_BIRDRED_" + number);
                     break;
                  case PARTICLE_MATERIAL_BIRD_BLACK:
                     this.createParticle("PARTICLE_BIRDBLACK_" + number);
                     break;
                  case PARTICLE_MATERIAL_BIRD_BLUE:
                     this.createParticle("PARTICLE_BIRDBLUE_" + number);
                     break;
                  case PARTICLE_MATERIAL_BIRD_GREEN:
                     this.createParticle("PARTICLE_BIRDGREEN_" + number);
                     break;
                  case PARTICLE_MATERIAL_BIRD_WHITE:
                     this.createParticle("PARTICLE_BIRDWHITE_" + number);
                     break;
                  case PARTICLE_MATERIAL_BIRD_YELLOW:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + number);
                     break;
                  case PARTICLE_MATERIAL_BIRD_MIGHTY_EAGLE:
                     this.createParticle("PARTICLE_BIRDBLACK_" + number);
                     break;
                  case PARTICLE_MATERIAL_BIRD_PINK:
                     this.createParticle("PARTICLE_BIRDPINK_" + number);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + number);
               }
               if(this.mDisplayObject)
               {
                  this.mDisplayObject.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(particleType,null,this.mDefaultAutoPlayFps,this.mDefaultClearAfterPlay);
         }
      }
      
      private function createParticle(name:String, childName:String = null, autoPlayFps:Number = -1, clearAfterPlay:Boolean = false) : void
      {
         var pivotTexture:PivotTexture = null;
         var texture:Texture = null;
         var particle:DisplayObject = null;
         if(name == "??")
         {
            return;
         }
         this.mClearAfterPlay = clearAfterPlay;
         var textureScale:Number = 1;
         this.mAnimation = this.mAnimationManager.getAnimation(name);
         this.mClearAfterPlay = clearAfterPlay;
         if(this.mAnimation)
         {
            particle = this.mAnimation.getFrame(0);
         }
         else
         {
            pivotTexture = this.mTextureManager.getTexture(name);
            if(!pivotTexture)
            {
               return;
            }
            texture = pivotTexture.texture;
            textureScale = pivotTexture.scale;
            particle = new Image(texture,false);
         }
         if(!particle)
         {
            return;
         }
         this.mAutoPlayFps = autoPlayFps;
         particle.scaleX *= this.mScale;
         particle.scaleY *= this.mScale;
         this.mDisplayObject.addChild(particle);
         particle.x = -this.mDisplayObject.width / 2;
         particle.y = -this.mDisplayObject.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.mDisplayObject)
         {
            this.mDisplayObject.x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
            this.mDisplayObject.y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
         }
      }
      
      public function attachToLevelObject(levelObject:LevelObject) : void
      {
         this.mLevelObject = levelObject;
      }
      
      public function update(deltaTime:Number) : Boolean
      {
         var targetFrame:int = 0;
         var particle:DisplayObject = null;
         this.mTimer += deltaTime;
         var updateVisuals:Boolean = false;
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
            targetFrame = this.mTimer / 1000 / (1 / this.mAutoPlayFps);
            if(targetFrame < this.mAnimation.frameCount)
            {
               particle = this.mAnimation.getFrame(targetFrame);
               this.mDisplayObject.removeChildren(0,-1,true);
               this.mDisplayObject.addChild(particle);
               particle.scaleX *= this.mScale;
               particle.scaleY *= this.mScale;
            }
            else if(this.mClearAfterPlay)
            {
               this.mDisplayObject.removeChildren(0,-1,true);
            }
         }
         if(this.mParticleType == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.updateLocation(deltaTime);
            updateVisuals = this.updateParticles(deltaTime);
            if(this.mMaxY > 0 && this.mY > this.mMaxY)
            {
               return false;
            }
         }
         else
         {
            this.updateLocation(deltaTime);
            updateVisuals = this.updateParticles(deltaTime);
         }
         if(this.mLifeTime > 0 && this.mTimer >= this.mLifeTime)
         {
            return false;
         }
         if(updateVisuals)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function updateLocation(deltaTime:Number) : void
      {
         this.mSpeedY += deltaTime * this.mGravity / 1000;
         this.mY += this.mSpeedY * deltaTime / 1000;
         this.mX += this.mSpeedX * deltaTime / 1000;
         if(this.mRotation != 0)
         {
            this.mDisplayObject.rotation += this.mRotation * deltaTime / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(deltaTime:Number) : Boolean
      {
         var scale:Number = NaN;
         var value:Number = NaN;
         var progress:Number = NaN;
         var angle:Number = NaN;
         if(this.mParticleType == PARTICLE_TYPE_FLOATING_TEXT)
         {
            if(this.mLifeTime > 0)
            {
               scale = 1;
               if(this.mParticleName == PARTICLE_NAME_FLOATING_TEXT)
               {
                  progress = this.mTimer / this.mLifeTime;
                  if(progress <= 0.2)
                  {
                     value = progress / 0.2;
                  }
                  else if(progress >= 0.8)
                  {
                     value = 1 - (progress - 0.8) / 0.2;
                  }
                  else
                  {
                     value = 1;
                  }
                  scale = value * (0.5 + int(this.mText) / 5000);
                  if(scale < -3)
                  {
                     scale = -3;
                  }
                  else if(scale > 3)
                  {
                     scale = 3;
                  }
               }
               this.mDisplayObject.scaleX = scale;
               this.mDisplayObject.scaleY = scale;
            }
            return true;
         }
         if(this.mParticleType == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.mParticleName == PARTICLE_NAME_EXPLOSIONS_PARTICLE)
            {
               this.mDisplayObject.alpha = Math.max(0,Math.min(1,2 * RovioUtils.exponentialMove((this.mLifeTime - this.mTimer) / this.mLifeTime,false)));
               angle = Math.atan2(-this.mSpeedY,this.mSpeedX) * (180 / Math.PI);
               this.mDisplayObject.scaleX = Math.max(0.2,this.mDisplayObject.alpha);
               this.mDisplayObject.scaleY = Math.max(0.2,this.mDisplayObject.alpha);
               this.mDisplayObject.rotation = (360 - angle) / 180 * Math.PI;
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
