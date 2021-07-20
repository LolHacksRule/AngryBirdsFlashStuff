package com.rovio.graphics
{
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class AnimationFrameComposite extends AnimationFrame
   {
       
      
      private var mTextureManager:TextureManager;
      
      private var mSpriteName:String;
      
      public function AnimationFrameComposite(param1:String, param2:TextureManager, param3:Number)
      {
         super(param3);
         this.mSpriteName = param1;
         this.mTextureManager = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Sprite = param1 as Sprite;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return CompositeSpriteParser.updateCompositeSprite(this.mSpriteName,this.mTextureManager,_loc2_);
      }
   }
}
