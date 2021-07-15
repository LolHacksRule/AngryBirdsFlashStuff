package com.angrybirds.engine.particles
{
   import com.rovio.graphics.TextureManager;
   import com.rovio.graphics.AnimationManager;
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
      
      public function LevelParticleManager(param1:AnimationManager, param2:TextureManager)
      {
         super();
         this.mAnimationManager = param1;
         this.mTextureManager = param2;
         this.mParticleGroups = new Vector.<LevelParticleGroup>();
         var _loc3_:int = 0;
         while(_loc3_ < PARTICLE_GROUP_COUNT)
         {
            this.mParticleGroups[_loc3_] = new LevelParticleGroup();
            _loc3_++;
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
         var _loc1_:LevelParticleGroup = null;
         if(this.mParticleGroups)
         {
            while(this.mParticleGroups.length)
            {
               _loc1_ = this.mParticleGroups.pop();
               _loc1_.dispose();
            }
         }
         this.mParticleGroups = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : LevelParticle
      {
         var _loc16_:LevelParticle = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:LevelParticleGroup;
         if(_loc17_ = this.getGroup(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:SimpleLevelParticle = new SimpleLevelParticle(this.mAnimationManager,this.mTextureManager,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:LevelParticleGroup;
         if(_loc18_ = this.getGroup(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : LevelParticle
      {
         return new LevelParticle(this.mAnimationManager,this.mTextureManager,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mParticleGroups.length)
         {
            this.getGroup(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function clearGroup(param1:int) : void
      {
         var _loc2_:LevelParticleGroup = this.getGroup(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function getGroupSprite(param1:int) : Sprite
      {
         return this.getGroup(param1).sprite;
      }
      
      public function getGroup(param1:Number) : LevelParticleGroup
      {
         if(this.mParticleGroups != null)
         {
            return this.mParticleGroups[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.clearGroup(PARTICLE_GROUP_TRAILS_OLD);
         var _loc1_:LevelParticleGroup = this.getGroup(PARTICLE_GROUP_TRAILS);
         var _loc2_:LevelParticleGroup = this.getGroup(PARTICLE_GROUP_TRAILS_OLD);
         _loc1_.moveParticlesTo(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:LevelParticleGroup = null;
         for each(_loc3_ in this.mParticleGroups)
         {
            _loc3_.updateScroll(param1,param2);
         }
      }
   }
}
