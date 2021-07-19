package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.particles.LevelParticle;
   import com.angrybirds.engine.particles.LevelParticleManager;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import com.rovio.sound.SoundEngine;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectXmasTreeAmmo extends LevelObject
   {
      
      private static const XMAS_AMMO_GRAPHICS:Array = [["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_1","PARTICLE_CHRISTMAS_SLINGSHOT_1_2","PARTICLE_CHRISTMAS_SLINGSHOT_1_3","PARTICLE_CHRISTMAS_SLINGSHOT_1_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_1","PARTICLE_CHRISTMAS_SLINGSHOT_2_2","PARTICLE_CHRISTMAS_SLINGSHOT_2_3","PARTICLE_CHRISTMAS_SLINGSHOT_2_4"],["MISC_FB_SHOT_CHRISTMAS_SLINGSHOT_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_1","PARTICLE_CHRISTMAS_SLINGSHOT_3_2","PARTICLE_CHRISTMAS_SLINGSHOT_3_3","PARTICLE_CHRISTMAS_SLINGSHOT_3_4"]];
      
      private static const AMMO_CHANNEL_NAME:String = "AmmoSound";
      
      private static const AMMO_CHANNEL_MAX_SOUNDS:int = 1;
      
      private static const AMMO_CHANNEL_VOLUME:Number = 1;
       
      
      private var mSelectedXMasAmmoGraphicsIndex:int;
      
      public function FacebookLevelObjectXmasTreeAmmo(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         notDamageAwarding = true;
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         disableCameraShakeOnCollision = true;
         SoundEngine.addNewChannelControl(AMMO_CHANNEL_NAME,AMMO_CHANNEL_MAX_SOUNDS,AMMO_CHANNEL_VOLUME);
         mB2Body.SetBullet(true);
         this.mSelectedXMasAmmoGraphicsIndex = 0;
         for(var i:int = 0; i < XMAS_AMMO_GRAPHICS.length; i++)
         {
            if(animation.name == XMAS_AMMO_GRAPHICS[i][0])
            {
               this.mSelectedXMasAmmoGraphicsIndex = i;
               break;
            }
         }
      }
      
      public static function randomGraphicName() : String
      {
         var index:int = Math.random() * XMAS_AMMO_GRAPHICS.length;
         return XMAS_AMMO_GRAPHICS[index][0];
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var filterData:b2FilterData = super.createFilterData();
         filterData.categoryBits = AMMO_BIT_CATEGORY;
         filterData.maskBits = 65535 & ~BIRD_BIT_CATEGORY & ~WHITE_BIRD_EGG_BIT_CATEGORY & ~PARACHUTE_BIT_CATEGORY;
         filterData.groupIndex = -1;
         getBody().SetForcedContactFiltering(true);
         return filterData;
      }
      
      override protected function addDestructionParticles(updateManager:ILevelObjectUpdateManager) : void
      {
         var degree:int = 0;
         var rotation:Number = NaN;
         var lifetime:int = 0;
         if(!updateManager)
         {
            return;
         }
         var angle:int = Math.random() * 360;
         updateManager.addParticle("XMAS_ORNAMENT_EXPLOSION",LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,500,"",0,Math.cos(angle) * scale,0,5,0,1,10);
         var count:int = XMAS_AMMO_GRAPHICS[this.mSelectedXMasAmmoGraphicsIndex].length - 1;
         var baseSpeed:int = 6;
         for(var i:int = 1; i < count; i++)
         {
            degree = Math.random() * 360;
            rotation = Math.random() * 2 < 1 ? Number(200) : Number(-200);
            lifetime = 450 + Math.random() * 200;
            AngryBirdsEngine.smLevelMain.particles.addSimpleParticle(XMAS_AMMO_GRAPHICS[this.mSelectedXMasAmmoGraphicsIndex][i],"",LevelParticleManager.PARTICLE_GROUP_GAME_EFFECTS,LevelParticle.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,lifetime,"",0,baseSpeed * Math.cos(degree),-baseSpeed * Math.sin(degree),10,rotation,1,1,true);
         }
      }
   }
}
