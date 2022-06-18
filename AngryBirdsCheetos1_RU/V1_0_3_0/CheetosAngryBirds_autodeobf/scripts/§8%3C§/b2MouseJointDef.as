package §8<§
{
   import §#,§.b2internal;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §%l§:Number;
      
      public var §-=§:Number;
      
      public var §99§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§67§;
         this.§%l§ = 0;
         this.§-=§ = 5;
         this.§99§ = 0.7;
      }
   }
}
