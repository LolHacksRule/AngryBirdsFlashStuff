package com.angrybirds.engine.particles
{
   import starling.display.Sprite;
   
   public class LevelParticleGroup
   {
       
      
      private var mParticles:Vector.<LevelParticle>;
      
      private var mContainer:Sprite;
      
      public function LevelParticleGroup()
      {
         this.mParticles = new Vector.<LevelParticle>();
         this.mContainer = new Sprite();
         super();
         this.mContainer.touchable = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.mContainer;
      }
      
      public function dispose() : void
      {
         var _loc1_:LevelParticle = null;
         while(this.mParticles.length)
         {
            _loc1_ = this.mParticles.pop();
            _loc1_.dispose();
         }
         this.mContainer.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:LevelParticle = null;
         while(this.mParticles.length)
         {
            _loc1_ = this.mParticles.pop();
            this.mContainer.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.mContainer.unflatten();
      }
      
      public function addParticle(param1:LevelParticle) : void
      {
         this.mParticles.push(param1);
         this.mContainer.addChild(param1.displayObject);
      }
      
      public function removeParticle(param1:LevelParticle) : void
      {
         var _loc3_:LevelParticle = null;
         var _loc2_:int = this.mParticles.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.mParticles[_loc2_];
            this.mContainer.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.mParticles.splice(_loc2_,1);
         }
      }
      
      public function moveParticlesTo(param1:LevelParticleGroup) : void
      {
         var _loc2_:LevelParticle = null;
         while(this.mParticles.length)
         {
            _loc2_ = this.mParticles.pop();
            this.mContainer.removeChild(_loc2_.displayObject);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:LevelParticle = null;
         var _loc2_:int = this.mParticles.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.mParticles[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.mContainer.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.mParticles.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function updateScroll(param1:Number, param2:Number) : void
      {
         this.mContainer.x = -param1;
         this.mContainer.y = -param2;
      }
   }
}
