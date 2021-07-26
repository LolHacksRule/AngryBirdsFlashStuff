package §@!O§
{
   import §0H§.b2internal;
   import §0m§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §^#L§:Number;
      
      public var §3";§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§4#t§;
         this.§^#L§ = 0;
         this.§3";§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
