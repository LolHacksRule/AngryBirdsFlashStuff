package com.angrybirds.data.level.theme
{
   public class BackgroundAnimationElement
   {
       
      
      public var count:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var w:Number;
      
      public var h:Number;
      
      public var velX:Number;
      
      public var velY:Number;
      
      public var variation:Number;
      
      public var randomRotation:Boolean;
      
      public var spriteList:Vector.<String>;
      
      public function BackgroundAnimationElement(spriteList:Array)
      {
         var sprite:String = null;
         super();
         this.spriteList = new Vector.<String>();
         for each(sprite in spriteList)
         {
            this.spriteList.push(sprite);
         }
      }
   }
}
