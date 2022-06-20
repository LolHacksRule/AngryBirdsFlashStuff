package com.angrybirds.data.level.item
{
   import com.rovio.factory.Log;
   
   public class LevelItemSoundResourceManager
   {
       
      
      private var mSoundResources:Array;
      
      public function LevelItemSoundResourceManager()
      {
         super();
      }
      
      public function loadSounds(sounds:XMLList) : void
      {
         var resourceSound:XML = null;
         this.mSoundResources = new Array();
         for each(resourceSound in sounds.Resource_Sound)
         {
            this.mSoundResources[this.mSoundResources.length] = new LevelItemSoundResource(resourceSound.@id,resourceSound.@channel,resourceSound.collisionSound,resourceSound.damagedSound,resourceSound.launchSound,resourceSound.specialSound,resourceSound.selectionSound,resourceSound.idleSound,resourceSound.destroyedSound,resourceSound.screamSound,resourceSound.rollingSound,resourceSound.slippingSound);
         }
      }
      
      public function getSoundResource(id:String) : LevelItemSoundResource
      {
         for(var i:int = 0; i < this.mSoundResources.length; i++)
         {
            if(LevelItemSoundResource(this.mSoundResources[i]).id.toLowerCase() == id.toLowerCase())
            {
               return LevelItemSoundResource(this.mSoundResources[i]);
            }
         }
         Log.log("WARNING: LevelItemSoundResourceManager -> getSoundResource request has no return value, this path does not exist: " + id);
         return null;
      }
   }
}
