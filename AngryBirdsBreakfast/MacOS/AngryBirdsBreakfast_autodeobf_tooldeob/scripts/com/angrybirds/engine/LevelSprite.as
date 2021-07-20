package com.angrybirds.engine
{
   import starling.display.Quad;
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   import com.angrybirds.AngryBirdsEngine;
   
   public class LevelSprite extends Sprite
   {
       
      
      protected var mGameSprite:Sprite;
      
      protected var mShade:DisplayObject;
      
      protected var mShakeContainer:Sprite;
      
      public function LevelSprite()
      {
         super();
         addChild(this.mShakeContainer = new Sprite());
         this.mShakeContainer.addChild(this.mGameSprite = new Sprite());
         this.mShade = new Quad(2,2,0);
         this.mShade.width = AngryBirdsEngine.SCREEN_WIDTH;
         this.mShade.height = AngryBirdsEngine.SCREEN_HEIGHT;
         addChild(this.mShade);
         this.mShade.alpha = 0.5;
      }
      
      public function get gameSprite() : Sprite
      {
         return this.mGameSprite;
      }
      
      public function get shade() : DisplayObject
      {
         return this.mShade;
      }
      
      public function get shakeContainer() : Sprite
      {
         return this.mShakeContainer;
      }
      
      public function updateSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.mShade.width / this.mShade.height;
         this.mShade.width = param1 + 600 / _loc3_;
         this.mShade.height = param2 + 600 / _loc3_;
      }
   }
}
