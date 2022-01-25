package §6$§
{
   import §&!L§.b2Vec2;
   import §7!C§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §?M§:Number;
      
      public var §#;§:Number;
      
      public var §8u§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§]&§;
         this.§?M§ = 0;
         this.§#;§ = 5;
         this.§8u§ = 0.7;
      }
   }
}
