package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-Ja§.b2Vec2;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §_-Kz§:b2Vec2;
      
      public var §_-Dq§:b2Vec2;
      
      public var §_-1u§:b2Vec2;
      
      public var §_-3J§:Boolean;
      
      public var §_-AK§:Number;
      
      public var §_-AX§:Number;
      
      public var §_-mY§:Boolean;
      
      public var §_-W-§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§_-Kz§ = new b2Vec2();
         this.§_-Dq§ = new b2Vec2();
         this.§_-1u§ = new b2Vec2();
         super();
         type = b2Joint.§_-7U§;
         this.§_-1u§.Set(1,0);
         this.§_-3J§ = false;
         this.§_-AK§ = 0;
         this.§_-AX§ = 0;
         this.§_-mY§ = false;
         this.§_-W-§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-lc§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-dL§ = param1;
         §_-h1§ = param2;
         this.§_-Kz§ = §_-dL§.GetLocalPoint(param3);
         this.§_-Dq§ = §_-h1§.GetLocalPoint(param3);
         this.§_-1u§ = §_-dL§.GetLocalVector(param4);
      }
   }
}
