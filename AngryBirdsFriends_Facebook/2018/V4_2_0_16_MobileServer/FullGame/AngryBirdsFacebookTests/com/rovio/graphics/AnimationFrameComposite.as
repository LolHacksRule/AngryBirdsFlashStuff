package com.rovio.graphics
{
   import starling.display.DisplayObject;
   import starling.display.Sprite;
   
   public class AnimationFrameComposite extends AnimationFrame
   {
       
      
      private var mTextureManager:TextureManager;
      
      public function AnimationFrameComposite(name:String, textureManager:TextureManager, timeMilliSeconds:Number)
      {
         super(name,timeMilliSeconds);
         this.mTextureManager = textureManager;
      }
      
      override public function updateDisplayObject(target:DisplayObject, useColor:Boolean = true) : DisplayObject
      {
         var sprite:Sprite = target as Sprite;
         if(!sprite)
         {
            if(target)
            {
               target.dispose();
            }
         }
         return CompositeSpriteParser.updateCompositeSprite(name,this.mTextureManager,sprite);
      }
   }
}
