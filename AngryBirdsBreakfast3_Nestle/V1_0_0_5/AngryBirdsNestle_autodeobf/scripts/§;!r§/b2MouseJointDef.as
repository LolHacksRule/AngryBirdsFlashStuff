package §;!r§
{
   import §-!A§.b2Vec2;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §'7§:Number;
      
      public var §?!O§:Number;
      
      public var §9@§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§-!o§;
         this.§'7§ = 0;
         this.§?!O§ = 5;
         this.§9@§ = 0.7;
      }
   }
}
