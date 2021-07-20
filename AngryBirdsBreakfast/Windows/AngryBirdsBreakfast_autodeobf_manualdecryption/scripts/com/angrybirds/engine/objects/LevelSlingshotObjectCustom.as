package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import starling.display.Sprite;
   import com.rovio.tween.TweenManagerGameObjects;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.angrybirds.engine.LevelSlingshotObject;
   import com.angrybirds.engine.LevelSlingshot;
   
   public class LevelSlingshotObjectCustom extends LevelSlingshotObject
   {
      
      private static const JUMP_HEIGHT:Number = 20;
      
      private static const JUMP_ROTATION:Number = 720;
      
      public static const JUMP_TIME:Number = 1.5;
       
      
      private var mJumpCoordinates:Object;
      
      private var mJumpTween:ISimpleTween = null;
      
      public function LevelSlingshotObjectCustom(param1:LevelSlingshot, param2:Sprite, param3:String, param4:LevelItem, param5:Number, param6:Number, param7:Number = 0.0, param8:int = 0)
      {
         this.mJumpCoordinates = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function jumpTweenToPosition(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : void
      {
         mFallingFromSlingshot = false;
         m_localPlaneNormal = -1;
         this.mJumpCoordinates.x = param1;
         this.mJumpCoordinates.y = param2;
         this.mJumpCoordinates.rotation = mOriginalRotation;
         if(param5)
         {
            this.mJumpTween = TweenManagerGameObjects.instance.createParallelTween(TweenManagerGameObjects.instance.createSequenceTween(TweenManagerGameObjects.instance.createTween(this.mJumpCoordinates,{"y":param4 - JUMP_HEIGHT},{"y":param2},JUMP_TIME / 2,TweenManager.EASING_QUAD_OUT),TweenManagerGameObjects.instance.createTween(this.mJumpCoordinates,{"y":param4},{"y":param4 - JUMP_HEIGHT},JUMP_TIME / 2,TweenManager.EASING_QUAD_IN)),TweenManagerGameObjects.instance.createTween(this.mJumpCoordinates,{
               "x":param3,
               "rotation":mOriginalRotation - JUMP_ROTATION
            },null,JUMP_TIME));
         }
         else
         {
            this.mJumpTween = TweenManagerGameObjects.instance.createTween(null,null,null,JUMP_TIME);
         }
         this.mJumpTween.onComplete = this.onJumpComplete;
      }
      
      private function onJumpComplete() : void
      {
         this.mJumpTween = null;
         mRotation = this.mJumpCoordinates.rotation;
         mBaseAngle = mOriginalRotation;
         setPosition(this.mJumpCoordinates.x,this.mJumpCoordinates.y);
         mFallingFromSlingshot = false;
         m_localPlaneNormal = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.mJumpTween != null)
         {
            if(this.mJumpTween.isPaused)
            {
               this.mJumpTween.play();
            }
            setPosition(this.mJumpCoordinates.x,this.mJumpCoordinates.y);
            mRotation = this.mJumpCoordinates.rotation;
            this.updateRenderer();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function updateRenderer() : void
      {
         if(this.mJumpTween && this.mJumpTween.isPaused)
         {
            return;
         }
         super.updateRenderer();
      }
      
      public function isJumping() : Boolean
      {
         if(this.mJumpTween)
         {
            return true;
         }
         return false;
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.mJumpTween != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.mJumpTween != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
   }
}
