package § q§
{
   import §+L§.b2Vec2;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §2D§:Number;
      
      public var §>!J§:Number;
      
      public var §5!y§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§4=§;
         this.§2D§ = 0;
         this.§>!J§ = 5;
         this.§5!y§ = 0.7;
      }
   }
}
