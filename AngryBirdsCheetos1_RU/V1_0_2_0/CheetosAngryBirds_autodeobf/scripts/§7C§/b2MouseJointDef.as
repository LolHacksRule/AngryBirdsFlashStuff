package §7C§
{
   import §&!+§.b2Vec2;
   import §8!%§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §=R§:Number;
      
      public var §5!0§:Number;
      
      public var §,!=§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§'d§;
         this.§=R§ = 0;
         this.§5!0§ = 5;
         this.§,!=§ = 0.7;
      }
   }
}
