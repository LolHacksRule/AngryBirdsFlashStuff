package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §<!U§:Number;
      
      public var §5Q§:Number;
      
      public var §=$§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§9!C§;
         this.§<!U§ = 0;
         this.§5Q§ = 5;
         this.§=$§ = 0.7;
      }
   }
}
