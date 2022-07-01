package §+!0§
{
   import §-%§.b2Vec2;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §?"5§:Number;
      
      public var §?X§:Number;
      
      public var §<!P§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§,![§;
         this.§?"5§ = 0;
         this.§?X§ = 5;
         this.§<!P§ = 0.7;
      }
   }
}
