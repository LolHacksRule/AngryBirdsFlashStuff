package com.AngryBirds.LevelPlayer
{
   import com.rovio.factory.RovioUtils;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class LevelParticle extends Sprite
   {
      
      public static const PARTICLE_TYPE_FLOATING_TEXT:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const PARTICLE_TYPE_STATIC_PARTICLE:int = 2;
      
      public static const PARTICLE_TYPE_TRAIL_PARTICLE:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL:String = "Effect_Trail_Bird";
      
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
      
      public var mParticleMaterial:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public function LevelParticle(newLevelParticles:LevelParticles, newParticleName:String, newParticleGroup:int, newParticleType:int, newX:Number, newY:Number, newLifeTime:Number, newText:String, newMaterial:int, newSpeedX:Number = 0, newSpeedY:Number = 0, newGravity:Number = 0, newRotation:Number = 0)
      {
         super();
         this.mLevelParticles = newLevelParticles;
         this.mParticleName = newParticleName;
         this.mParticleType = newParticleType;
         this.mParticleGroupIndex = newParticleGroup;
         this.mParticleMaterial = newMaterial;
         this.mText = newText;
         this.createVisuals();
         (this.mLevelParticles.mParticleContainers[newParticleGroup] as DisplayObjectContainer).addChild(this);
         this.mTimer = 0;
         this.mLifeTime = newLifeTime;
         this.mX = newX;
         this.mY = newY;
         this.mSpeedX = newSpeedX;
         this.mSpeedY = newSpeedY;
         this.mRotation = newRotation;
         this.mGravity = newGravity;
         this.updateRenderer();
      }
      
      public static function getParticleMaterialFromEngineMaterial(name:String) : int
      {
         if(name.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_RED;
         }
         if(name.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_YELLOW;
         }
         if(name.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_BLUE;
         }
         if(name.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_BLACK;
         }
         if(name.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_WHITE;
         }
         if(name.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return PARTICLE_MATERIAL_BIRD_GREEN;
         }
         if(name.toUpperCase().indexOf("PIG") >= 0)
         {
            return PARTICLE_MATERIAL_PIGS;
         }
         if(name.toUpperCase().indexOf("ICE") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_ICE;
         }
         if(name.toUpperCase().indexOf("WOOD") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_WOOD;
         }
         if(name.toUpperCase().indexOf("STONE") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_STONE;
         }
         if(name.toUpperCase().indexOf("SNOW") >= 0)
         {
            return PARTICLE_MATERIAL_BLOCKS_SNOW;
         }
         return PARTICLE_MATERIAL_BLOCKS_MISC;
      }
      
      public static function getTextMaterialFromEngineMaterial(name:String) : int
      {
         if(name.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_RED;
         }
         if(name.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_YELLOW;
         }
         if(name.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_BLUE;
         }
         if(name.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_BLACK;
         }
         if(name.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_WHITE;
         }
         if(name.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_GREEN;
         }
         if(name.toUpperCase().indexOf("PIG") >= 0)
         {
            return PARTICLE_MATERIAL_TEXT_GREEN;
         }
         return PARTICLE_MATERIAL_TEXT_WHITE;
      }
      
      public function setSpeed(newX:Number, newY:Number) : void
      {
      }
      
      public function createVisuals() : void
      {
         var shape:Shape = null;
         var image:DisplayObject = null;
         var random:int = 0;
         var field:TextField = null;
         var i:int = 0;
         var rand:int = 0;
         var number:int = 0;
         if(this.mParticleName == PARTICLE_NAME_BIRD_TRAIL)
         {
            image = new this.mLevelParticles.mAssetClassBirdTrail();
            addChild(image);
         }
         else if(this.mParticleName == PARTICLE_NAME_BIRD_TRAIL_BIG)
         {
            image = new this.mLevelParticles.mAssetClassBirdTrailSpecial();
            addChild(image);
         }
         else if(this.mParticleName == PARTICLE_NAME_BIRD_TRAIL_SPARKLE)
         {
            if(false && Math.random() < 0.5)
            {
               image = new this.mLevelParticles.mAssetClassBirdTrailSparkle1();
            }
            else
            {
               image = new this.mLevelParticles.mAssetClassBirdTrailSparkle2();
            }
            addChild(image);
         }
         else if(this.mParticleName == PARTICLE_NAME_PIG_DESTRUCTION)
         {
            image = new this.mLevelParticles.mAssetClassPigDestruction();
            addChild(image);
         }
         else if(this.mParticleName == PARTICLE_NAME_PIG_DESTRUCTION_HEADSHOT)
         {
            image = new this.mLevelParticles.mAssetClassPigDestructionHeadshot();
            addChild(image);
         }
         else if(this.mParticleName == PARTICLE_NAME_BLOCK_DESTRUCTION_CORE)
         {
            image = new this.mLevelParticles.mAssetClassBlockDestructionCore();
            addChild(image);
         }
         else if(this.mParticleName == PARTICLE_NAME_EXPLOSION_CORE)
         {
            image = new this.mLevelParticles.mAssetClassExplosionCore();
            addChild(image);
         }
         else if(this.mParticleName == PARTICLE_NAME_EXPLOSIONS_PARTICLE)
         {
            image = new this.mLevelParticles.mAssetClassExplosionParticles();
            random = 1 + Math.random() * 5;
            image = (image as DisplayObjectContainer).getChildByName("particle" + random);
            addChild(image);
         }
         else if(this.mParticleName == PARTICLE_NAME_FLOATING_SCORE || this.mParticleName == PARTICLE_NAME_FLOATING_TEXT)
         {
            image = new this.mLevelParticles.mAssetClassFloatingText();
            switch(this.mParticleMaterial)
            {
               case PARTICLE_MATERIAL_TEXT_RED:
                  field = (image as MovieClip).text_red;
                  break;
               case PARTICLE_MATERIAL_TEXT_BLACK:
                  field = (image as MovieClip).text_black;
                  break;
               case PARTICLE_MATERIAL_TEXT_BLUE:
                  field = (image as MovieClip).text_blue;
                  break;
               case PARTICLE_MATERIAL_TEXT_GREEN:
                  field = (image as MovieClip).text_green;
                  break;
               case PARTICLE_MATERIAL_TEXT_YELLOW:
                  field = (image as MovieClip).text_yellow;
                  break;
               case PARTICLE_MATERIAL_TEXT_WHITE:
               default:
                  field = (image as MovieClip).text_white;
            }
            field.text = this.mText;
            addChild(image);
            for(i = 0; i < (image as DisplayObjectContainer).numChildren; i++)
            {
               (image as DisplayObjectContainer).getChildAt(i).visible = false;
            }
            field.visible = true;
         }
         else if(this.mParticleName == PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES)
         {
            if(this.mParticleMaterial == PARTICLE_MATERIAL_BLOCKS_ICE)
            {
               image = new this.mLevelParticles.mAssetClassBlockIceDestruction();
               rand = 1 + Math.random() * 6;
               image = (image as DisplayObjectContainer).getChildByName("particle" + rand);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BLOCKS_SNOW)
            {
               image = new this.mLevelParticles.mAssetClassBlockSnowDestruction();
               rand = 1 + Math.random() * 7;
               image = (image as DisplayObjectContainer).getChildByName("particle" + rand);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BLOCKS_WOOD)
            {
               image = new this.mLevelParticles.mAssetClassBlockWoodDestruction();
               rand = 1 + Math.random() * 4;
               image = (image as DisplayObjectContainer).getChildByName("particle" + rand);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BLOCKS_STONE)
            {
               image = new this.mLevelParticles.mAssetClassBlockStoneDestruction();
               rand = 1 + Math.random() * 3;
               image = (image as DisplayObjectContainer).getChildByName("particle" + rand);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BLOCKS_MISC)
            {
               image = new this.mLevelParticles.mAssetClassBlockMiscDestruction();
               rand = 1 + Math.random() * 6;
               image = (image as DisplayObjectContainer).getChildByName("particle" + rand);
            }
            addChild(image);
            image.rotation = Math.random() * 360;
         }
         else if(this.mParticleName == PARTICLE_NAME_BIRD_DESTRUCTION)
         {
            image = new this.mLevelParticles.mAssetClassBirdDestruction();
            number = 1 + Math.random() * 3;
            if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_RED)
            {
               image = (image as DisplayObjectContainer).getChildByName("bird_red" + number);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_BLACK)
            {
               image = (image as DisplayObjectContainer).getChildByName("bird_black" + number);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_BLUE)
            {
               image = (image as DisplayObjectContainer).getChildByName("bird_blue" + number);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_GREEN)
            {
               image = (image as DisplayObjectContainer).getChildByName("bird_green" + number);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_WHITE)
            {
               image = (image as DisplayObjectContainer).getChildByName("bird_white" + number);
            }
            else if(this.mParticleMaterial == PARTICLE_MATERIAL_BIRD_YELLOW)
            {
               image = (image as DisplayObjectContainer).getChildByName("bird_yellow" + number);
            }
            else
            {
               image = (image as DisplayObjectContainer).getChildByName("bird_white" + number);
            }
            addChild(image);
            image.rotation = Math.random() * 360;
         }
         else
         {
            shape = new Shape();
            shape.graphics.lineStyle(1);
            shape.graphics.beginFill(16711680,1);
            shape.graphics.drawRect(-5,-5,10,10);
            addChild(shape);
         }
      }
      
      public function updateRenderer() : void
      {
         x = this.mX / LevelMain.PIXEL_TO_B2_SCALE;
         y = this.mY / LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function update(deltaTime:Number) : Boolean
      {
         var scale:Number = NaN;
         var angle:Number = NaN;
         this.mTimer += deltaTime;
         var updateVisuals:Boolean = false;
         if(this.mParticleType == PARTICLE_TYPE_FLOATING_TEXT)
         {
            this.updateLocation(deltaTime);
            if(this.mLifeTime > 0)
            {
               scale = 1;
               if(this.mParticleName == PARTICLE_NAME_FLOATING_SCORE)
               {
                  scale = 0.5 + int(this.mText) / 5000;
                  scale = 0.5 + scale * RovioUtils.exponentialMove(this.mTimer / this.mLifeTime);
               }
               else if(this.mParticleName == PARTICLE_NAME_FLOATING_TEXT)
               {
                  scale = 1.2 + 0.4 * RovioUtils.exponentialMove(this.mTimer / this.mLifeTime);
               }
               scaleX = scale;
               scaleY = scale;
            }
            updateVisuals = true;
         }
         else if(this.mParticleType == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.updateLocation(deltaTime);
            if(this.mParticleName == PARTICLE_NAME_EXPLOSIONS_PARTICLE)
            {
               alpha = Math.max(0,Math.min(1,2 * RovioUtils.exponentialMove((this.mLifeTime - this.mTimer) / this.mLifeTime,false)));
               angle = Math.atan2(-this.mSpeedY,this.mSpeedX) * (180 / Math.PI);
               scaleX = Math.max(0.2,alpha);
               scaleY = Math.max(0.2,alpha);
               rotation = 360 - angle;
            }
            updateVisuals = true;
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
            rotation += this.mRotation * deltaTime / 1000;
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
