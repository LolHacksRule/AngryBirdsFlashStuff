package com.angrybirds.engine.objects
{
   import com.rovio.graphics.Animation;
   import com.angrybirds.data.level.item.LevelItemSoundResource;
   import com.angrybirds.data.level.item.LevelItem;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   import com.angrybirds.data.level.object.LevelObjectModel;
   
   public class LevelObjectAnimal extends LevelObject
   {
      
      public static const SCREAM_TIME:Number = 1000;
      
      public static const BLINK_TIME:Number = 500;
      
      public static const ANIMATION_SCREAM:String = "yell";
      
      public static const ANIMATION_BLINK:String = "blink";
       
      
      protected var mScreamTime:Number = -1.0;
      
      protected var mBlinkTime:Number = -1.0;
      
      public function LevelObjectAnimal(param1:Sprite, param2:Animation, param3:b2World, param4:LevelItem, param5:LevelObjectModel, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function get isBlinking() : Boolean
      {
         return this.mBlinkTime >= 0;
      }
      
      public function get isScreaming() : Boolean
      {
         return this.mScreamTime >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.isBlinking && !this.isScreaming;
      }
      
      public function scream() : void
      {
         this.mScreamTime = SCREAM_TIME;
         this.mBlinkTime = -1;
         mRenderer.setAnimation(ANIMATION_SCREAM,false);
      }
      
      public function blink() : void
      {
         this.mBlinkTime = BLINK_TIME;
         this.mScreamTime = -1;
         mRenderer.setAnimation(ANIMATION_BLINK,false);
      }
      
      protected function normalize() : void
      {
         mRenderer.setAnimation(ANIMATION_NORMAL,false);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.isScreaming)
         {
            this.mScreamTime -= param1;
         }
         if(this.isBlinking)
         {
            this.mBlinkTime -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         playSoundEffect(LevelItemSoundResource.SOUND_SCREAM);
      }
   }
}
