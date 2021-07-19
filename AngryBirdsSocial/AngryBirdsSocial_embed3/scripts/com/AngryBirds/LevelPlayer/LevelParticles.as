package com.AngryBirds.LevelPlayer
{
   import com.rovio.assets.AssetCache;
   import flash.display.*;
   
   public class LevelParticles extends Sprite
   {
      
      public static const PARTICLE_GROUP_TRAILS_OLD:int = 0;
      
      public static const PARTICLE_GROUP_TRAILS:int = 1;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_FLOATING_TEXT:int = 3;
      
      public static const PARTICLE_GROUP_COUNT:int = 4;
       
      
      public var mParticles:Array;
      
      public var mParticleContainers:Vector.<Sprite>;
      
      public var mLevelMain:LevelMain;
      
      public var mAssetClassBirdTrail:Class;
      
      public var mAssetClassBirdTrailSpecial:Class;
      
      public var mAssetClassBirdTrailSparkle1:Class;
      
      public var mAssetClassBirdTrailSparkle2:Class;
      
      public var mAssetClassFloatingText:Class;
      
      public var mAssetClassExplosionCore:Class;
      
      public var mAssetClassExplosionParticles:Class;
      
      public var mAssetClassPigDestruction:Class;
      
      public var mAssetClassPigDestructionHeadshot:Class;
      
      public var mAssetClassBirdDestruction:Class;
      
      public var mAssetClassBlockDestructionCore:Class;
      
      public var mAssetClassBlockStoneDestruction:Class;
      
      public var mAssetClassBlockWoodDestruction:Class;
      
      public var mAssetClassBlockIceDestruction:Class;
      
      public var mAssetClassBlockSnowDestruction:Class;
      
      public var mAssetClassBlockMiscDestruction:Class;
      
      public function LevelParticles(newLevelMain:LevelMain)
      {
         super();
         this.mLevelMain = newLevelMain;
         this.mParticles = new Array();
         this.mParticleContainers = new Vector.<Sprite>();
         for(var i:int = 0; i < PARTICLE_GROUP_COUNT; i++)
         {
            this.mParticles[i] = new Array();
            this.mParticleContainers[i] = new Sprite();
         }
         this.loadAssets();
      }
      
      public function loadAssets() : void
      {
         this.mAssetClassBirdTrail = AssetCache.getAssetFromCache("effect_bird_trail");
         this.mAssetClassBirdTrailSpecial = AssetCache.getAssetFromCache("effect_bird_trail_special");
         this.mAssetClassBirdTrailSparkle1 = AssetCache.getAssetFromCache("effect_bird_sparkle_particle1");
         this.mAssetClassBirdTrailSparkle2 = AssetCache.getAssetFromCache("effect_bird_sparkle_particle2");
         this.mAssetClassFloatingText = AssetCache.getAssetFromCache("effect_floating_text");
         this.mAssetClassPigDestruction = AssetCache.getAssetFromCache("effect_pig_destruction");
         this.mAssetClassPigDestructionHeadshot = AssetCache.getAssetFromCache("effect_pig_destruction_headshot");
         this.mAssetClassBirdDestruction = AssetCache.getAssetFromCache("effect_bird_destruction");
         this.mAssetClassExplosionCore = AssetCache.getAssetFromCache("effect_bird_explosion");
         this.mAssetClassExplosionParticles = AssetCache.getAssetFromCache("effect_explosion_particles");
         this.mAssetClassBlockStoneDestruction = AssetCache.getAssetFromCache("effect_stone_particles");
         this.mAssetClassBlockWoodDestruction = AssetCache.getAssetFromCache("effect_wood_particles");
         this.mAssetClassBlockIceDestruction = AssetCache.getAssetFromCache("effect_ice_particles");
         this.mAssetClassBlockSnowDestruction = AssetCache.getAssetFromCache("effect_snow_particles");
         this.mAssetClassBlockMiscDestruction = AssetCache.getAssetFromCache("effect_misc_particles");
         this.mAssetClassBlockDestructionCore = AssetCache.getAssetFromCache("effect_block_destruction");
      }
      
      public function addParticle(newParticleName:String, newParticleGroup:int, newParticleType:int, newX:Number, newY:Number, newLifeTime:Number, newText:String, newMaterial:int, newSpeedX:Number = 0, newSpeedY:Number = 0, newGravity:Number = 0, newRotation:Number = 0) : LevelParticle
      {
         var p:LevelParticle = new LevelParticle(this,newParticleName,newParticleGroup,newParticleType,newX,newY,newLifeTime,newText,newMaterial,newSpeedX,newSpeedY,newGravity,newRotation);
         this.mParticles[newParticleGroup][(this.mParticles[newParticleGroup] as Array).length] = p;
         return p;
      }
      
      public function update(deltaTime:Number) : void
      {
         var j:int = 0;
         for(var i:int = 0; i < this.mParticles.length; i++)
         {
            for(j = 0; j < (this.mParticles[i] as Array).length; j++)
            {
               if(!(this.mParticles[i][j] as LevelParticle).update(deltaTime))
               {
                  (this.mParticles[i][j] as LevelParticle).kill();
                  (this.mParticles[i] as Array).splice(j,1);
                  j--;
               }
            }
         }
      }
      
      public function clear() : void
      {
         var j:int = 0;
         for(var i:int = 0; i < this.mParticles.length; i++)
         {
            for(j = 0; j < (this.mParticles[i] as Array).length; j++)
            {
               (this.mParticles[i][j] as LevelParticle).kill();
               this.mParticles[i][j] = null;
            }
            this.mParticles[i] = null;
            while((this.mParticleContainers[i] as DisplayObjectContainer).numChildren > 0)
            {
               (this.mParticleContainers[i] as DisplayObjectContainer).removeChildAt(0);
            }
            this.mLevelMain.removeChild(this.mParticleContainers[i]);
            this.mParticleContainers[i] = null;
         }
         this.mParticles = null;
         this.mParticleContainers = null;
         this.mAssetClassBirdTrail = null;
         this.mAssetClassBirdTrailSpecial = null;
         this.mAssetClassBirdTrailSparkle1 = null;
         this.mAssetClassBirdTrailSparkle2 = null;
         this.mAssetClassExplosionCore = null;
         this.mAssetClassExplosionParticles = null;
         this.mAssetClassPigDestruction = null;
         this.mAssetClassPigDestructionHeadshot = null;
         this.mAssetClassFloatingText = null;
         this.mAssetClassBirdDestruction = null;
         this.mAssetClassBlockStoneDestruction = null;
         this.mAssetClassBlockIceDestruction = null;
         this.mAssetClassBlockSnowDestruction = null;
         this.mAssetClassBlockWoodDestruction = null;
         this.mAssetClassBlockMiscDestruction = null;
         this.mAssetClassBlockDestructionCore = null;
      }
      
      public function clearGroup(index:int, killParticle:Boolean = true) : void
      {
         while((this.mParticles[index] as Array).length > 0)
         {
            if(killParticle)
            {
               (this.mParticles[index][0] as LevelParticle).kill();
            }
            this.mParticles[index][0] = null;
            (this.mParticles[index] as Array).splice(0,1);
         }
         while((this.mParticleContainers[index] as DisplayObjectContainer).numChildren > 0)
         {
            (this.mParticleContainers[index] as DisplayObjectContainer).removeChildAt(0);
         }
      }
      
      public function getGroup(id:Number) : Array
      {
         if(this.mParticles != null)
         {
            return this.mParticles[id];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.clearGroup(PARTICLE_GROUP_TRAILS_OLD);
         while((this.mParticleContainers[PARTICLE_GROUP_TRAILS] as DisplayObjectContainer).numChildren > 0)
         {
            (this.mParticleContainers[PARTICLE_GROUP_TRAILS_OLD] as DisplayObjectContainer).addChild((this.mParticleContainers[PARTICLE_GROUP_TRAILS] as DisplayObjectContainer).getChildAt(0));
         }
         this.mParticles[PARTICLE_GROUP_TRAILS_OLD] = (this.mParticles[PARTICLE_GROUP_TRAILS] as Array).slice();
         for(var i:int = 0; i < (this.mParticles[PARTICLE_GROUP_TRAILS_OLD] as Array).length; i++)
         {
            (this.mParticles[PARTICLE_GROUP_TRAILS_OLD][i] as LevelParticle).mParticleGroupIndex = PARTICLE_GROUP_TRAILS_OLD;
         }
         this.clearGroup(PARTICLE_GROUP_TRAILS,false);
      }
      
      public function updateScrollAndScale(sideScroll:Number, verticalScroll:Number) : void
      {
         x = -sideScroll;
         y = -verticalScroll;
         for(var i:int = 0; i < this.mParticles.length; i++)
         {
            this.mParticleContainers[i].x = -sideScroll;
            this.mParticleContainers[i].y = -verticalScroll;
         }
      }
   }
}
