package §2",§
{
   import §1x§.b2Body;
   import §9!s§.b2internal;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §2"g§:b2Vec2;
      
      public var §#l§:b2Vec2;
      
      public var § %§:Number;
      
      public var §@"a§:Boolean;
      
      public var §@k§:Number;
      
      public var §&"t§:Number;
      
      public var §<!l§:Boolean;
      
      public var motorSpeed:Number;
      
      public var § K§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§2"g§ = new b2Vec2();
         this.§#l§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§2"g§.Set(0,0);
         this.§#l§.Set(0,0);
         this.§ %§ = 0;
         this.§@k§ = 0;
         this.§&"t§ = 0;
         this.§ K§ = 0;
         this.motorSpeed = 0;
         this.§@"a§ = false;
         this.§<!l§ = false;
      }
      
      public function §8!s§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §!!x§ = param1;
         §%!x§ = param2;
         this.§2"g§ = §!!x§.GetLocalPoint(param3);
         this.§#l§ = §%!x§.GetLocalPoint(param3);
         this.§ %§ = §%!x§.GetAngle() - §!!x§.GetAngle();
      }
   }
}
