package §3!U§
{
   import §%!9§.b2Vec2;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §;#L§:Number;
      
      public var §0Y§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§]!o§;
         this.§;#L§ = 0;
         this.§0Y§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
