package com.angrybirds.engine
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.slingshots.SlingShotDefinition;
   import com.angrybirds.slingshots.SlingShotType;
   import com.angrybirds.slingshots.SlingShotUIManager;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import flash.geom.Point;
   import starling.display.Sprite;
   
   public class FacebookLevelSlingshotObject extends LevelSlingshotObject
   {
      
      private static const JUMP_HEIGHT:Number = 10;
      
      public static const JUMP_TIME:Number = 1;
       
      
      private var mJumpTween:ISimpleTween = null;
      
      private var mJumpCoordinates:Object;
      
      private var mPowerUpSuperSeedUsed:Boolean = false;
      
      private var mSlingShotAbility:SlingShotDefinition;
      
      public function FacebookLevelSlingshotObject(newSlingshot:LevelSlingshot, sprite:Sprite, newName:String, levelItem:LevelItem, newX:Number, newY:Number, baseAngleRadians:Number, index:int)
      {
         this.mJumpCoordinates = new Object();
         super(newSlingshot,sprite,newName,levelItem,newX,newY,baseAngleRadians,index);
      }
      
      public function jumpTweenToPosition(newX:Number, newY:Number, birdsLeft:Boolean = true) : ISimpleTween
      {
         mFallingFromSlingshot = false;
         mGroundCheckTimer = -1;
         this.mJumpCoordinates.x = mX;
         this.mJumpCoordinates.y = mY;
         this.mJumpCoordinates.rotation = mRotation;
         if(birdsLeft)
         {
            this.mJumpTween = TweenManager.instance.createParallelTween(TweenManager.instance.createTween(this.mJumpCoordinates,{
               "x":newX,
               "rotation":-360
            },null,JUMP_TIME),TweenManager.instance.createSequenceTween(TweenManager.instance.createTween(this.mJumpCoordinates,{"y":this.mJumpCoordinates.y - JUMP_HEIGHT},null,JUMP_TIME / 2,TweenManager.EASING_QUAD_OUT),TweenManager.instance.createTween(this.mJumpCoordinates,{"y":newY},{"y":this.mJumpCoordinates.y - JUMP_HEIGHT},JUMP_TIME / 2,TweenManager.EASING_QUAD_IN)));
         }
         else
         {
            this.mJumpTween = TweenManager.instance.createTween(null,null,null,FacebookLevelSlingshotObject.JUMP_TIME);
         }
         this.mJumpTween.play();
         this.mJumpTween.onComplete = this.onJumpComplete;
         return this.mJumpTween;
      }
      
      private function onJumpComplete() : void
      {
         this.mJumpTween = null;
         mRotation = this.mJumpCoordinates.rotation;
         setPosition(this.mJumpCoordinates.x,this.mJumpCoordinates.y);
         mFallingFromSlingshot = false;
         mGroundCheckTimer = -1;
         animationsEnabled = true;
      }
      
      override public function update(deltaTime:Number, isJoyBounce:Boolean = false, updateLogic:Boolean = true) : void
      {
         if(this.mJumpTween != null)
         {
            mRotation = this.mJumpCoordinates.rotation;
            setPosition(this.mJumpCoordinates.x,this.mJumpCoordinates.y);
            this.updateRenderer();
            this.mJumpTween.play();
         }
         else
         {
            super.update(deltaTime,isJoyBounce,updateLogic);
         }
      }
      
      override public function applyGravity(movement:Number) : Boolean
      {
         if(this.mJumpTween != null)
         {
            return false;
         }
         return super.applyGravity(movement);
      }
      
      override public function updateGroundControl(deltaTime:Number) : void
      {
         if(this.mJumpTween != null)
         {
            return;
         }
         super.updateGroundControl(deltaTime);
      }
      
      public function get powerUpSuperSeedUsed() : Boolean
      {
         return this.mPowerUpSuperSeedUsed;
      }
      
      public function set powerUpSuperSeedUsed(value:Boolean) : void
      {
         this.mPowerUpSuperSeedUsed = value;
      }
      
      public function get SlingShotAbility() : SlingShotDefinition
      {
         return this.mSlingShotAbility;
      }
      
      public function set SlingShotAbility(value:SlingShotDefinition) : void
      {
         this.mSlingShotAbility = value;
      }
      
      override public function approachSlingshot(deltaTime:Number) : void
      {
         if(SlingShotUIManager.getSelectedSlingShotId() == SlingShotType.SLING_SHOT_CHRISTMAS.identifier)
         {
         }
         super.approachSlingshot(deltaTime);
      }
      
      override public function updateRenderer() : void
      {
         var p:Point = null;
         var angle:Number = NaN;
         var birdOffsetX:Number = NaN;
         var birdOffsetY:Number = NaN;
         super.updateRenderer();
         if(onSlingshot && SlingShotUIManager.getSelectedSlingShotId() == SlingShotType.SLING_SHOT_CHRISTMAS.identifier && (mSlingshot as FacebookLevelSlingshot).treePartToAttachBirdTo)
         {
            p = new Point((mSlingshot as FacebookLevelSlingshot).treePartToAttachBirdTo.x,(mSlingshot as FacebookLevelSlingshot).treePartToAttachBirdTo.y);
            angle = (mSlingshot as FacebookLevelSlingshot).treePartToAttachBirdTo.getAngle();
            birdOffsetX = 0.5 * radius * Math.cos(mBaseAngle) / LevelMain.PIXEL_TO_B2_SCALE;
            birdOffsetY = 0.5 * radius * Math.sin(mBaseAngle) / LevelMain.PIXEL_TO_B2_SCALE;
            sprite.x = p.x + birdOffsetX;
            sprite.y = p.y + birdOffsetY;
         }
      }
   }
}
