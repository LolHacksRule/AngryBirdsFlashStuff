package com.angrybirds.giftinbox
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var sParticleClass:Class;
       
      
      private var mGraphic:MovieClip;
      
      private var mVelocity:Point;
      
      private var mAngularVelocity:Number;
      
      private var mSuperAlpha:Number = 2;
      
      public function GiftParticle(x:Number, y:Number)
      {
         super();
         this.initGraphic();
         this.mVelocity = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
         this.mAngularVelocity = Math.random() * 16 - 8;
         addEventListener(Event.ENTER_FRAME,this.onFrame);
         this.x = x;
         this.y = y;
      }
      
      private function initGraphic() : void
      {
         if(!sParticleClass)
         {
            sParticleClass = AssetCache.getAssetFromCache("GiftParticle");
         }
         this.mGraphic = new sParticleClass();
         addChild(this.mGraphic);
         this.mGraphic.gotoAndStop(1 + Math.round(Math.random() * (this.mGraphic.totalFrames - 1)));
      }
      
      private function onFrame(e:Event) : void
      {
         x += this.mVelocity.x;
         y += this.mVelocity.y;
         rotation += this.mAngularVelocity;
         this.mAngularVelocity *= 0.95;
         this.mVelocity.y += 1 / 60 * 9.8;
         alpha = Math.min(1,this.mSuperAlpha = this.mSuperAlpha - 0.05);
         if(alpha <= 0)
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
