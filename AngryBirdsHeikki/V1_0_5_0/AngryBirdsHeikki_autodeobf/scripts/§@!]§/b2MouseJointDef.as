package §@!]§
{
   import §,!3§.b2Vec2;
   import §3'§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §5$§:Number;
      
      public var §?1§:Number;
      
      public var §%m§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§2&§;
         this.§5$§ = 0;
         this.§?1§ = 5;
         this.§%m§ = 0.7;
      }
   }
}
