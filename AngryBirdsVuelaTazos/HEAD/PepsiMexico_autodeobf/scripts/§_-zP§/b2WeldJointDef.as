package §_-zP§
{
   import §_-bA§.b2Vec2;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §_-Ys§:b2Vec2;
      
      public var §_-8p§:b2Vec2;
      
      public var §_-51§:Number;
      
      public function b2WeldJointDef()
      {
         this.§_-Ys§ = new b2Vec2();
         this.§_-8p§ = new b2Vec2();
         super();
         type = b2Joint.§_-to§;
         this.§_-51§ = 0;
      }
      
      public function §_-95§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-wE§ = param1;
         §_-3J§ = param2;
         this.§_-Ys§.SetV(§_-wE§.GetLocalPoint(param3));
         this.§_-8p§.SetV(§_-3J§.GetLocalPoint(param3));
         this.§_-51§ = §_-3J§.GetAngle() - §_-wE§.GetAngle();
      }
   }
}
