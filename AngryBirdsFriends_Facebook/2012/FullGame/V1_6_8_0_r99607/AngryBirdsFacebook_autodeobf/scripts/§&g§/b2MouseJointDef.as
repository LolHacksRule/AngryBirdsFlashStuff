package §&g§
{
   import §!"8§.b2Vec2;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §27§:Number;
      
      public var §3"7§:Number;
      
      public var §8!D§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§5!y§;
         this.§27§ = 0;
         this.§3"7§ = 5;
         this.§8!D§ = 0.7;
      }
   }
}
