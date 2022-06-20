package §!"b§
{
   import §&$+§.b2internal;
   import §04§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §^"P§:Number;
      
      public var §'#%§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§]"E§;
         this.§^"P§ = 0;
         this.§'#%§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
