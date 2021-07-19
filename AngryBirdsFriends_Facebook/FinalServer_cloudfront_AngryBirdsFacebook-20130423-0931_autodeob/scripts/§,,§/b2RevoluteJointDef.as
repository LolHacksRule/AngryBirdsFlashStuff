package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §1b§:Number;
      
      public var §5!!§:Boolean;
      
      public var §?X§:Number;
      
      public var §>p§:Number;
      
      public var §<!0§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §4f§:Number;
      
      public function b2RevoluteJointDef()
      {
         this.§-!,§ = new b2Vec2();
         this.§["9§ = new b2Vec2();
         super();
         type = b2Joint.e_revoluteJoint;
         this.§-!,§.Set(0,0);
         this.§["9§.Set(0,0);
         this.§1b§ = 0;
         this.§?X§ = 0;
         this.§>p§ = 0;
         this.§4f§ = 0;
         this.motorSpeed = 0;
         this.§5!!§ = false;
         this.§<!0§ = false;
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §`y§ = param1;
         §8!7§ = param2;
         this.§-!,§ = §`y§.GetLocalPoint(param3);
         this.§["9§ = §8!7§.GetLocalPoint(param3);
         this.§1b§ = §8!7§.GetAngle() - §`y§.GetAngle();
      }
   }
}
