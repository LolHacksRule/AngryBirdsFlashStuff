package §5v§
{
   import §1#F§.b2internal;
   import §6!R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §?>§:Number;
      
      public var §6"%§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§=#+§;
         this.§?>§ = 0;
         this.§6"%§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
