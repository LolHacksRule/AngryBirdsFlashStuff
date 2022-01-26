package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §_-uE§:b2Vec2;
      
      public var §_-L5§:b2Vec2;
      
      public var §_-Nd§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§_-uE§ = new b2Vec2();
         this.§_-L5§ = new b2Vec2();
         super();
         type = b2Joint.§_-47§;
         this.§_-Nd§ = 0;
         this.maxTorque = 0;
      }
      
      public function §_-t1§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §_-33§ = param1;
         §_-Pt§ = param2;
         this.§_-uE§.SetV(§_-33§.GetLocalPoint(param3));
         this.§_-L5§.SetV(§_-Pt§.GetLocalPoint(param3));
      }
   }
}
