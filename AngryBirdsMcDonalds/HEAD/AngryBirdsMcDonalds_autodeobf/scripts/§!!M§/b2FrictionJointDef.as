package §!!M§
{
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §5!E§:b2Vec2;
      
      public var §21§:b2Vec2;
      
      public var §0!Y§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         this.§5!E§ = new b2Vec2();
         this.§21§ = new b2Vec2();
         super();
         type = b2Joint.§=!!§;
         this.§0!Y§ = 0;
         this.maxTorque = 0;
      }
      
      public function §`!9§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         §-i§ = param1;
         §0!F§ = param2;
         this.§5!E§.SetV(§-i§.GetLocalPoint(param3));
         this.§21§.SetV(§0!F§.GetLocalPoint(param3));
      }
   }
}
