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
         var particle:LevelParticle = null;
         while(this.mParticles.length)
         {
            particle = this.mParticles.pop();
            particle.dispose();
         }
         this.mContainer.dispose();
      }
      
      public function clear() : void
      {
         var particle:LevelParticle = null;
         while(this.mParticles.length)
         {
            particle = this.mParticles.pop();
            this.mContainer.removeChild(particle.displayObject);
            particle.dispose();
         }
         this.mContainer.unflatten();
      }
      
      public function addParticle(particle:LevelParticle) : void
      {
         this.mParticles.push(particle);
         this.mContainer.addChild(particle.displayObject);
      }
      
      public function removeParticle(particleToRemove:LevelParticle) : void
      {
         var particle:LevelParticle = null;
         var index:int = this.mParticles.indexOf(particleToRemove);
         if(index > -1)
         {
            particle = this.mParticles[index];
            this.mContainer.removeChild(particle.displayObject);
            particle.dispose();
            this.mParticles.splice(index,1);
         }
      }
      
      public function moveParticlesTo(target:LevelParticleGroup) : void
      {
         var particle:LevelParticle = null;
         while(this.mParticles.length)
         {
            particle = this.mParticles.pop();
            this.mContainer.removeChild(particle.displayObject);
            target.addParticle(particle);
         }
      }
      
      public function update(deltaTime:Number) : void
      {
         var particle:LevelParticle = null;
         for(var i:int = this.mParticles.length - 1; i >= 0; i--)
         {
            particle = this.mParticles[i];
            if(!particle.update(deltaTime))
            {
               this.mContainer.removeChild(particle.displayObject);
               particle.dispose();
               this.mParticles.splice(i,1);
            }
         }
      }
      
      public function updateScroll(sideScroll:Number, verticalScroll:Number) : void
      {
         this.mContainer.x = -sideScroll;
         this.mContainer.y = -verticalScroll;
      }
   }
}
