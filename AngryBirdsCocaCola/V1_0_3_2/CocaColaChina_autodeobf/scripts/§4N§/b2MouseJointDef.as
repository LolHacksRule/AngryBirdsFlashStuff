package §4N§
{
   import §"!R§.b2internal;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §'!a§:Number;
      
      public var §3!_§:Number;
      
      public var §-f§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§8,§;
         this.§'!a§ = 0;
         this.§3!_§ = 5;
         this.§-f§ = 0.7;
      }
   }
}
