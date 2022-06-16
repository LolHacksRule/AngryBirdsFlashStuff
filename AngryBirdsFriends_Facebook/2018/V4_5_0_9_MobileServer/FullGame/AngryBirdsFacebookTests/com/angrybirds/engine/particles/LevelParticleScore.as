package com.angrybirds.engine.particles
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.engine.LevelMain;
   import com.angrybirds.engine.objects.ILevelObjectUpdateManager;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.PivotTexture;
   import starling.display.Image;
   import starling.display.Sprite;
   
   public class LevelParticleScore extends LevelParticleBase
   {
      
      public static const NAME:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const SCALE_START:Number = 0;
      
      private static const SCALE_MIDDLE:Number = 2;
      
      private static const SCALE_END:Number = 0;
       
      
      protected var mScoreImage:Image;
      
      protected var mScoreTexture:PivotTexture;
      
      protected var mCurrentScale:Number;
      
      protected var mScaleStep:int;
      
      protected var mScaleTime:Number;
      
      protected var positionX:Number;
      
      protected var positionY:Number;
      
      public function LevelParticleScore(texture:PivotTexture, sprite:Sprite, world:b2World, levelItem:LevelItem, x:Number, y:Number)
      {
         super(sprite,world,levelItem);
         this.mScoreTexture = texture;
         this.mScoreImage = new Image(this.mScoreTexture.texture);
         sprite.addChild(this.mScoreImage);
         this.mScoreImage.scaleX = SCALE_START;
         this.mScoreImage.scaleY = SCALE_START;
         this.mCurrentScale = SCALE_START;
         this.mScaleStep = 0;
         this.mScaleTime = 0;
         this.positionX = x;
         this.positionY = y;
         sprite.x = this.positionX / LevelMain.PIXEL_TO_B2_SCALE;
         sprite.y = this.positionY / LevelMain.PIXEL_TO_B2_SCALE;
      }
      
      public function hide() : void
      {
         if(sprite)
         {
            sprite.visible = false;
         }
      }
      
      override public function dispose(b:Boolean = true) : void
      {
         if(this.mScoreImage)
         {
            this.mScoreImage.dispose();
            this.mScoreImage = null;
         }
         this.mScoreTexture = null;
         super.dispose(b);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.mScaleStep > 2;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         this.mScaleTime += deltaTimeMilliSeconds;
         if(this.mScaleStep == 0)
         {
            this.mCurrentScale = SCALE_START + (SCALE_MIDDLE - SCALE_START) * (this.mScaleTime / SCALE_STEP1_TIME_MS);
            if(this.mCurrentScale >= SCALE_MIDDLE)
            {
               this.mCurrentScale = SCALE_MIDDLE;
               ++this.mScaleStep;
               this.mScaleTime = 0;
            }
         }
         else if(this.mScaleStep == 1)
         {
            if(this.mScaleTime >= SCALE_STEP2_TIME_MS)
            {
               ++this.mScaleStep;
               this.mScaleTime = 0;
            }
         }
         else if(this.mScaleStep == 2)
         {
            this.mCurrentScale = SCALE_MIDDLE + (SCALE_END - SCALE_MIDDLE) * (this.mScaleTime / SCALE_STEP3_TIME_MS);
            if(this.mCurrentScale <= 0)
            {
               ++this.mScaleStep;
            }
         }
         this.mScoreImage.scaleX = this.mCurrentScale;
         this.mScoreImage.scaleY = this.mCurrentScale;
         sprite.x = this.positionX / LevelMain.PIXEL_TO_B2_SCALE - this.mScoreImage.width / 2;
         sprite.y = this.positionY / LevelMain.PIXEL_TO_B2_SCALE - this.mScoreImage.height;
      }
   }
}
