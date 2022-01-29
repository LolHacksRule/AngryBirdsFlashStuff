package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var linearVelocity:b2Vec2;
      
      public var angularVelocity:Number;
      
      public var linearDamping:Number;
      
      public var angularDamping:Number;
      
      public var allowSleep:Boolean;
      
      public var awake:Boolean;
      
      public var fixedRotation:Boolean;
      
      public var bullet:Boolean;
      
      public var active:Boolean;
      
      public var userData;
      
      public var inertiaScale:Number;
      
      public var gravityScale:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.linearVelocity = new b2Vec2();
         super();
         this.userData = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.linearVelocity.Set(0,0);
         this.angularVelocity = 0;
         this.linearDamping = 0;
         this.angularDamping = 0;
         this.allowSleep = true;
         this.awake = true;
         this.fixedRotation = false;
         this.bullet = false;
         this.type = b2Body.b2_staticBody;
         this.active = true;
         this.inertiaScale = 1;
         this.gravityScale = 1;
      }
   }
}
