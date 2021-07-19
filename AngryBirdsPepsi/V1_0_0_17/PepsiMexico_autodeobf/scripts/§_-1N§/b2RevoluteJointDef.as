package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var §_-Lv§:Number;
      
      public var §_-3J§:Boolean;
      
      public var §_-Mn§:Number;
      
      public var §_-VQ§:Number;
      
      public var §_-mY§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §_-fo§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§_-Kz§ = new b2Vec2();
         this.§_-Dq§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§_-Kz§.Set(0,0);
         this.§_-Dq§.Set(0,0);
         this.§_-Lv§ = 0;
         this.§_-Mn§ = 0;
         this.§_-VQ§ = 0;
         this.§_-fo§ = 0;
         this.motorSpeed = 0;
         this.§_-3J§ = false;
         this.§_-mY§ = false;
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-dL§ = param1;
         §_-h1§ = param2;
         this.§_-Kz§ = §_-dL§.GetLocalPoint(param3);
         this.§_-Dq§ = §_-h1§.GetLocalPoint(param3);
         this.§_-Lv§ = §_-h1§.GetAngle() - §_-dL§.GetAngle();
      }
   }
}
