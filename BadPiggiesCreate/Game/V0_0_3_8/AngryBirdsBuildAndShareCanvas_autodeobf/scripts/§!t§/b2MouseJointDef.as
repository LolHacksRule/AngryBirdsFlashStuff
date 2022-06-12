package §!t§
{
   import §8,§.b2internal;
   import §9v§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §>!F§:Number;
      
      public var §"]§:Number;
      
      public var §2!_§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§4"5§;
         this.§>!F§ = 0;
         this.§"]§ = 5;
         this.§2!_§ = 0.7;
      }
   }
}
