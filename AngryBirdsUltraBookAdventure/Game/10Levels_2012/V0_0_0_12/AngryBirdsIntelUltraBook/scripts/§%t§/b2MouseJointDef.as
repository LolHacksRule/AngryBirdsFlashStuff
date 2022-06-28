package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §3!,§:Number;
      
      public var §?!J§:Number;
      
      public var §9!7§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§ !,§;
         this.§3!,§ = 0;
         this.§?!J§ = 5;
         this.§9!7§ = 0.7;
      }
   }
}
