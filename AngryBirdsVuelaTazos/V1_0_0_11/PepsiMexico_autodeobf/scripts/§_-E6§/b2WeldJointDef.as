package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §_-uE§:b2Vec2;
      
      public var §_-L5§:b2Vec2;
      
      public var §_-Rk§:Number;
      
      public function b2WeldJointDef()
      {
         this.§_-uE§ = new b2Vec2();
         this.§_-L5§ = new b2Vec2();
         super();
         type = b2Joint.§_-Bx§;
         this.§_-Rk§ = 0;
      }
      
      public function §_-t1§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-33§ = param1;
         §_-Pt§ = param2;
         this.§_-uE§.SetV(§_-33§.GetLocalPoint(param3));
         this.§_-L5§.SetV(§_-Pt§.GetLocalPoint(param3));
         this.§_-Rk§ = §_-Pt§.GetAngle() - §_-33§.GetAngle();
      }
   }
}
