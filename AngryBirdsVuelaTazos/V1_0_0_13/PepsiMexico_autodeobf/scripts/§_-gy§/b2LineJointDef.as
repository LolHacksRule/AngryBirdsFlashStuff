package §_-gy§
{
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §_-3r§:b2Vec2;
      
      public var §_-sR§:b2Vec2;
      
      public var §_-0z§:b2Vec2;
      
      public var §_-yk§:Boolean;
      
      public var §_-mQ§:Number;
      
      public var §_-v-§:Number;
      
      public var §_-ff§:Boolean;
      
      public var §_-l1§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§_-3r§ = new b2Vec2();
         this.§_-sR§ = new b2Vec2();
         this.§_-0z§ = new b2Vec2();
         super();
         type = b2Joint.§_-jT§;
         this.§_-0z§.Set(1,0);
         this.§_-yk§ = false;
         this.§_-mQ§ = 0;
         this.§_-v-§ = 0;
         this.§_-ff§ = false;
         this.§_-l1§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §_-PU§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §_-cw§ = param1;
         §_-U9§ = param2;
         this.§_-3r§ = §_-cw§.GetLocalPoint(param3);
         this.§_-sR§ = §_-U9§.GetLocalPoint(param3);
         this.§_-0z§ = §_-cw§.GetLocalVector(param4);
      }
   }
}
