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
      
      public var mAssetClassBirdTrail1:Class;
      
      public var mAssetClassBirdTrail2:Class;
      
      public var mAssetClassBirdTrail3:Class;
      
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
      
      public function LevelParticles(param1:LevelMain)
      {
         super();
         this.mLevelMain = param1;
         this.mParticles = new Array();
         this.mParticleContainers = new Vector.<Sprite>();
         var _loc2_:int = 0;
         while(_loc2_ < PARTICLE_GROUP_COUNT)
         {
            this.mParticles[_loc2_] = new Array();
            this.mParticleContainers[_loc2_] = new Sprite();
            _loc2_++;
         }
         this.loadAssets();
      }
      
      public function loadAssets() : void
      {
         this.mAssetClassBirdTrail1 = AssetCache.getAssetFromCache("effect_bird_trail_1");
         this.mAssetClassBirdTrail2 = AssetCache.getAssetFromCache("effect_bird_trail_2");
         this.mAssetClassBirdTrail3 = AssetCache.getAssetFromCache("effect_bird_trail_3");
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
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0) : LevelParticle
      {
         var _loc13_:LevelParticle = new LevelParticle(this,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12);
         this.mParticles[param2][(this.mParticles[param2] as Array).length] = _loc13_;
         return _loc13_;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mParticles.length)
         {
            _loc3_ = 0;
            while(_loc3_ < (this.mParticles[_loc2_] as Array).length)
            {
               if(!(this.mParticles[_loc2_][_loc3_] as LevelParticle).update(param1))
               {
                  (this.mParticles[_loc2_][_loc3_] as LevelParticle).kill();
                  (this.mParticles[_loc2_] as Array).splice(_loc3_,1);
                  _loc3_--;
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function clear() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.mParticles.length)
         {
            _loc2_ = 0;
            while(_loc2_ < (this.mParticles[_loc1_] as Array).length)
            {
               (this.mParticles[_loc1_][_loc2_] as LevelParticle).kill();
               this.mParticles[_loc1_][_loc2_] = null;
               _loc2_++;
            }
            this.mParticles[_loc1_] = null;
            while((this.mParticleContainers[_loc1_] as DisplayObjectContainer).numChildren > 0)
            {
               (this.mParticleContainers[_loc1_] as DisplayObjectContainer).removeChildAt(0);
            }
            this.mLevelMain.removeChild(this.mParticleContainers[_loc1_]);
            this.mParticleContainers[_loc1_] = null;
            _loc1_++;
         }
         this.mParticles = null;
         this.mParticleContainers = null;
         this.mAssetClassBirdTrail1 = null;
         this.mAssetClassBirdTrail2 = null;
         this.mAssetClassBirdTrail3 = null;
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
      
      public function clearGroup(param1:int, param2:Boolean = true) : void
      {
         while((this.mParticles[param1] as Array).length > 0)
         {
            if(param2)
            {
               (this.mParticles[param1][0] as LevelParticle).kill();
            }
            this.mParticles[param1][0] = null;
            (this.mParticles[param1] as Array).splice(0,1);
         }
         while((this.mParticleContainers[param1] as DisplayObjectContainer).numChildren > 0)
         {
            (this.mParticleContainers[param1] as DisplayObjectContainer).removeChildAt(0);
         }
      }
      
      public function getGroup(param1:Number) : Array
      {
         if(this.mParticles != null)
         {
            return this.mParticles[param1];
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
         var _loc1_:int = 0;
         while(_loc1_ < (this.mParticles[PARTICLE_GROUP_TRAILS_OLD] as Array).length)
         {
            (this.mParticles[PARTICLE_GROUP_TRAILS_OLD][_loc1_] as LevelParticle).mParticleGroupIndex = PARTICLE_GROUP_TRAILS_OLD;
            _loc1_++;
         }
         this.clearGroup(PARTICLE_GROUP_TRAILS,false);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         x = -param1;
         y = -param2;
         var _loc3_:int = 0;
         while(_loc3_ < this.mParticles.length)
         {
            this.mParticleContainers[_loc3_].x = -param1;
            this.mParticleContainers[_loc3_].y = -param2;
            _loc3_++;
         }
      }
   }
}
