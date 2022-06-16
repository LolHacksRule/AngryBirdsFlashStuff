package com.angrybirds.data.level.item.behaviors.transformation
{
   import com.angrybirds.data.level.item.behaviors.BehaviorData;
   
   public class TransformationData extends BehaviorData
   {
       
      
      private var mTargetBlockName:String;
      
      private var mSoundName:String;
      
      private var mExplosion:Object;
      
      private var mParticle:Array;
      
      private var mMinDelay:Number = 0;
      
      private var mMaxDelay:Number = 0;
      
      public function TransformationData(transformationName:String, targetBlock:String, soundName:String, explosion:Object, particles:Object, delay:Object)
      {
         super(transformationName);
         this.mTargetBlockName = targetBlock;
         this.mSoundName = soundName;
         this.mExplosion = explosion;
         if(particles is Array)
         {
            this.mParticle = this.readArray(particles);
         }
         else if(particles)
         {
            this.mParticle = [String(particles)];
         }
         if(delay)
         {
            this.mMinDelay = delay.min;
            this.mMaxDelay = delay.max;
         }
      }
      
      public static function createInstance(transformationName:String, transformationsData:*) : TransformationData
      {
         return new TransformationData(transformationName,transformationsData.targetBlock,transformationsData.sound,transformationsData.explosion,transformationsData.particles,transformationsData.delay);
      }
      
      private function readArray(data:*) : Array
      {
         var arrayFromObject:Array = null;
         var o:Object = null;
         if(data is String)
         {
            return [data];
         }
         if(data is Array)
         {
            return data;
         }
         if(data is Object)
         {
            arrayFromObject = [];
            for each(o in data)
            {
               arrayFromObject.push(o);
            }
            return arrayFromObject;
         }
         return [];
      }
      
      public function get targetBlockName() : String
      {
         return this.mTargetBlockName;
      }
      
      public function get soundName() : String
      {
         return this.mSoundName;
      }
      
      public function get hasExplosion() : Boolean
      {
         return this.mExplosion != null;
      }
      
      public function get explosionPush() : Number
      {
         return !!this.mExplosion ? Number(this.mExplosion.force) : Number(0);
      }
      
      public function get explosionPushRadius() : Number
      {
         return !!this.mExplosion ? Number(this.mExplosion.radius) : Number(0);
      }
      
      public function get explosionDamage() : Number
      {
         return !!this.mExplosion ? Number(this.mExplosion.damage) : Number(0);
      }
      
      public function get explosionDamageRadius() : Number
      {
         return !!this.mExplosion ? Number(this.mExplosion.damageRadius) : Number(0);
      }
      
      public function get particleCount() : int
      {
         if(this.mParticle)
         {
            return this.mParticle.length;
         }
         return 0;
      }
      
      public function getParticle(i:int) : String
      {
         if(this.mParticle)
         {
            return this.mParticle[i];
         }
         return null;
      }
      
      public function get minDelay() : Number
      {
         return this.mMinDelay;
      }
      
      public function get maxDelay() : Number
      {
         return this.mMaxDelay;
      }
   }
}
