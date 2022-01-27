package §3!A§
{
   import § !_§.b2Vec2;
   import §+&§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §=T§:Number;
      
      public var §&!=§:Number;
      
      public var §1b§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§<!_§;
         this.§=T§ = 0;
         this.§&!=§ = 5;
         this.§1b§ = 0.7;
      }
   }
}
