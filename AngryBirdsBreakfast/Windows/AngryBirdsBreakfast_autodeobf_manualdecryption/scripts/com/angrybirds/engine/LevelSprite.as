package com.angrybirds.engine
{
   import starling.display.Quad;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import com.angrybirds.AngryBirdsEngine;
   
   public class LevelSprite extends Sprite
   {
       
      
      protected var mGameSprite:Sprite;
      
      protected var mBorderLeft_B2:DisplayObject;
      
      protected var mShakeContainer:Sprite;
      
      public function LevelSprite()
      {
         super();
         addChild(this.mShakeContainer = new Sprite());
         this.mShakeContainer.addChild(this.mGameSprite = new Sprite());
         this.mBorderLeft_B2 = new Quad(2,2,0);
         this.mBorderLeft_B2.width = AngryBirdsEngine.SCREEN_WIDTH;
         this.mBorderLeft_B2.height = AngryBirdsEngine.SCREEN_HEIGHT;
         addChild(this.mBorderLeft_B2);
         this.mBorderLeft_B2.alpha = 0.5;
      }
      
      public function get gameSprite() : Sprite
      {
         return this.mGameSprite;
      }
      
      public function get shade() : DisplayObject
      {
         return this.mBorderLeft_B2;
      }
      
      public function get shakeContainer() : Sprite
      {
         return this.mShakeContainer;
      }
      
      public function updateSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.mBorderLeft_B2.width / this.mBorderLeft_B2.height;
         this.mBorderLeft_B2.width = param1 + 600 / _loc3_;
         this.mBorderLeft_B2.height = param2 + 600 / _loc3_;
      }
   }
}
