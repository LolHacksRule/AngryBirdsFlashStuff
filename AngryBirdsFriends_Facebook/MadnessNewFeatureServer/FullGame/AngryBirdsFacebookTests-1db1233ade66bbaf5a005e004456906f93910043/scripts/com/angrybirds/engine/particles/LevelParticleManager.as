package com.angrybirds.engine.particles
{
   import com.rovio.graphics.AnimationManager;
   import com.rovio.graphics.TextureManager;
   import starling.display.Sprite;
   
   public class LevelParticleManager
   {
      
      public static const PARTICLE_GROUP_TRAILS_OLD:int = 0;
      
      public static const PARTICLE_GROUP_TRAILS:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const PARTICLE_GROUP_FLOATING_TEXT:int = 4;
      
      public static const PARTICLE_GROUP_FOREGROUND_EFFECTS:int = 5;
      
      public static const PARTICLE_GROUP_COUNT:int = 6;
       
      
      private var mParticleGroups:Vector.<LevelParticleGroup>;
      
      private var mAnimationManager:AnimationManager;
      
      private var mTextureManager:TextureManager;
      
      public function LevelParticleManager(animationManager:AnimationManager, textureManager:TextureManager)
      {
         super();
         this.mAnimationManager = animationManager;
         this.mTextureManager = textureManager;
         this.mParticleGroups = new Vector.<LevelParticleGroup>();
         for(var i:int = 0; i < PARTICLE_GROUP_COUNT; i++)
         {
            this.mParticleGroups[i] = new LevelParticleGroup();
         }
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.mAnimationManager;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.mTextureManager;
      }
      
      public function dispose() : void
      {
         var particleGroup:LevelParticleGroup = null;
         if(this.mParticleGroups)
         {
            while(this.mParticleGroups.length)
            {
               particleGroup = this.mParticleGroups.pop();
               particleGroup.dispose();
            }
         }
         this.mParticleGroups = null;
      }
      
      public function addParticle(particleName:String, particleGroup:int, particleType:int, x:Number, y:Number, lifeTime:Number, text:String, material:int, speedX:Number = 0, speedY:Number = 0, gravity:Number = 0, rotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:int = -1, defaultClearAfterPlay:Boolean = false, floatingScoreFont:String = null) : LevelParticle
      {
         var p:LevelParticle = this.createParticle(particleName,particleGroup,particleType,x,y,lifeTime,text,material,speedX,speedY,gravity,rotation,scale,defaultAutoPlayFps,defaultClearAfterPlay,floatingScoreFont);
         var group:LevelParticleGroup = this.getGroup(particleGroup);
         if(group)
         {
            group.addParticle(p);
         }
         else
         {
            p.dispose();
         }
         return p;
      }
      
      public function addSimpleParticle(particleJSONId:String, particleName:String, particleGroup:int, particleType:int, x:Number, y:Number, lifeTime:Number, text:String, material:int, speedX:Number = 0, speedY:Number = 0, gravity:Number = 0, rotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:Number = -1, defaultClearAfterPlay:Boolean = false) : void
      {
         var particle:SimpleLevelParticle = new SimpleLevelParticle(this.mAnimationManager,this.mTextureManager,particleName,particleGroup,particleType,x,y,lifeTime,text,material,speedX,speedY,gravity,rotation,scale,defaultAutoPlayFps,defaultClearAfterPlay,particleJSONId);
         var group:LevelParticleGroup = this.getGroup(particleGroup);
         if(group)
         {
            group.addParticle(particle);
         }
         else
         {
            particle.dispose();
         }
      }
      
      public function addScalingParticle(particleJSONId:String, particleGroup:int, particleType:int, startScalingLifetimePercentage:Number, x:Number, y:Number, lifeTime:Number, material:int, speedX:Number = 0, speedY:Number = 0, gravity:Number = 0, rotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:int = -1, defaultClearAfterPlay:Boolean = false) : void
      {
         var particle:ScalingLevelParticle = new ScalingLevelParticle(this.mAnimationManager,this.mTextureManager,particleGroup,particleType,x,y,lifeTime,material,speedX,speedY,gravity,rotation,scale,defaultAutoPlayFps,defaultClearAfterPlay,particleJSONId,startScalingLifetimePercentage);
         var group:LevelParticleGroup = this.getGroup(particleGroup);
         if(group)
         {
            group.addParticle(particle);
         }
         else
         {
            particle.dispose();
         }
      }
      
      protected function createParticle(particleName:String, particleGroup:int, particleType:int, x:Number, y:Number, lifeTime:Number, text:String, material:int, speedX:Number = 0, speedY:Number = 0, gravity:Number = 0, rotation:Number = 0, scale:Number = 1, defaultAutoPlayFps:Number = -1, defaultClearAfterPlay:Boolean = false, floatingScoreFont:String = null) : LevelParticle
      {
         return new LevelParticle(this.mAnimationManager,this.mTextureManager,particleName,particleGroup,particleType,x,y,lifeTime,text,material,speedX,speedY,gravity,rotation,scale,defaultAutoPlayFps,defaultClearAfterPlay,floatingScoreFont);
      }
      
      public function update(deltaTime:Number) : void
      {
         for(var i:int = 0; i < this.mParticleGroups.length; i++)
         {
            this.getGroup(i).update(deltaTime);
         }
      }
      
      public function clearGroup(index:int) : void
      {
         var particleGroup:LevelParticleGroup = this.getGroup(index);
         if(particleGroup)
         {
            particleGroup.clear();
         }
      }
      
      public function getGroupSprite(groupIndex:int) : Sprite
      {
         return this.getGroup(groupIndex).sprite;
      }
      
      public function getGroup(id:Number) : LevelParticleGroup
      {
         if(this.mParticleGroups != null)
         {
            return this.mParticleGroups[id];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.clearGroup(PARTICLE_GROUP_TRAILS_OLD);
         var trailGroup:LevelParticleGroup = this.getGroup(PARTICLE_GROUP_TRAILS);
         var oldTrailGroup:LevelParticleGroup = this.getGroup(PARTICLE_GROUP_TRAILS_OLD);
         trailGroup.moveParticlesTo(oldTrailGroup);
         oldTrailGroup.sprite.flatten();
      }
      
      public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         var particleGroup:LevelParticleGroup = null;
         for each(particleGroup in this.mParticleGroups)
         {
            particleGroup.updateScroll(sideScroll,verticalScroll);
         }
      }
   }
}
