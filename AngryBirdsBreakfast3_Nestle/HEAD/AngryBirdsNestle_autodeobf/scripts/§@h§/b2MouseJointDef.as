package §@h§
{
   import §'!_§.b2internal;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §6g§:Number;
      
      public var §<!f§:Number;
      
      public var dampingRatio:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§@!Q§;
         this.§6g§ = 0;
         this.§<!f§ = 5;
         this.dampingRatio = 0.7;
      }
   }
}
