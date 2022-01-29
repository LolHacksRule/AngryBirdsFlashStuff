package com.angrybirds.data.level.item
{
   public class LevelItemParticleSpace extends LevelItemSpaceParticleLua
   {
       
      
      protected var mReticle:Boolean;
      
      protected var mLayerVisibilityOverlay:Boolean;
      
      protected var mLayerVisibilityInFrontObject:Boolean;
      
      public function LevelItemParticleSpace(luaObject:Object, itemType:int, material:LevelItemMaterial, resourcePathsSound:LevelItemSoundResource, newScore:int, front:Boolean = false)
      {
         super(luaObject,itemType,material,resourcePathsSound,newScore,front);
         this.mReticle = luaObject.reticle;
         if(luaObject.hasOwnProperty("overlay"))
         {
            this.mLayerVisibilityOverlay = luaObject.overlay;
         }
         else
         {
            this.mLayerVisibilityOverlay = false;
         }
         if(luaObject.hasOwnProperty("inFrontObject"))
         {
            this.mLayerVisibilityInFrontObject = luaObject.inFrontObject;
         }
         else
         {
            this.mLayerVisibilityInFrontObject = false;
         }
      }
      
      public function get isReticle() : Boolean
      {
         return this.mReticle;
      }
      
      public function get inFrontObject() : Boolean
      {
         return this.mLayerVisibilityInFrontObject;
      }
      
      public function get overlay() : Boolean
      {
         return this.mLayerVisibilityOverlay;
      }
   }
}
