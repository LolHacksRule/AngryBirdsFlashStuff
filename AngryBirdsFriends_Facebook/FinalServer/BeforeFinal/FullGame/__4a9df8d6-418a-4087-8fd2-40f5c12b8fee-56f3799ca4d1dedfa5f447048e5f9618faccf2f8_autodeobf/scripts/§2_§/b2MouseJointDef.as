package §2_§
{
   import §?!C§.b2Vec2;
   import §?N§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §=!g§:Number;
      
      public var §,K§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§9O§;
         this.§=!g§ = 0;
         this.§,K§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
