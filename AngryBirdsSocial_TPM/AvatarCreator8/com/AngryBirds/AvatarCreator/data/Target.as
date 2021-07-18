package com.AngryBirds.AvatarCreator.data
{
   import flash.geom.Point;
   
   public class Target
   {
       
      
      public var mPosition:Point = null;
      
      public var mScale:Number = 1.0;
      
      public var mAnimation:String = "";
      
      public function Target(param1:Point, param2:Number, param3:String = "Jump")
      {
         super();
         this.mPosition = param1;
         this.mScale = param2;
         this.mAnimation = param3;
      }
   }
}
