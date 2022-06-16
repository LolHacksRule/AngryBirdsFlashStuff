package com.angrybirds.powerups
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class GlitterParticle extends Sprite
   {
      
      private static var sParticleClass:Class;
      
      public static var sVelocityX:Number = 1;
      
      public static var sVelocityY:Number = 1;
      
      public static var sAngluarVelocity:Number = 0.9;
      
      public static var sLifeTime:Number = 800;
      
      public static var sGravity:Number = 2;
       
      
      private var mGraphic:MovieClip;
      
      private var mVelocity:Point;
      
      private var mAngularVelocity:Number;
      
      private var mSuperAlpha:Number = 2;
      
      private var mLifeTime:Number = 1000;
      
      private var mLastFrameTime:Number;
      
      public function GlitterParticle(x:Number, y:Number)
      {
         super();
         this.initGraphic();
         this.mVelocity = new Point(Math.random() * sVelocityX * (Math.random() < 0.5 ? -1 : 1),Math.random() * sVelocityY * (Math.random() < 0.5 ? -1 : 1));
         this.mAngularVelocity = sAngluarVelocity;
         addEventListener(Event.ENTER_FRAME,this.onFrame);
         this.mLifeTime = sLifeTime;
         this.x = x;
         this.y = y;
      }
      
      private function initGraphic() : void
      {
         if(!sParticleClass)
         {
            sParticleClass = AssetCache.getAssetFromCache("GlitterParticle");
         }
         this.mGraphic = new sParticleClass();
         addChild(this.mGraphic);
         this.mGraphic.gotoAndStop(1 + Math.round(Math.random() * (this.mGraphic.totalFrames - 1)));
      }
      
      private function onFrame(e:Event) : void
      {
         var deltaTime:Number = getTimer() - this.mLastFrameTime;
         this.mLastFrameTime = getTimer();
         if(isNaN(deltaTime))
         {
            return;
         }
         x += this.mVelocity.x;
         y += this.mVelocity.y;
         rotation += sAngluarVelocity;
         this.mAngularVelocity *= sAngluarVelocity;
         this.mVelocity.y += 1 / 60 * sGravity;
         this.mLifeTime -= deltaTime;
         alpha = Math.min(1,this.mSuperAlpha = this.mSuperAlpha - 0.05);
         if(this.mLifeTime <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.onFrame);
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}
