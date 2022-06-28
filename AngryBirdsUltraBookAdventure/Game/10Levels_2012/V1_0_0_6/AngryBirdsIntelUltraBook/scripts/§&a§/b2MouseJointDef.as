package §&a§
{
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §2A§:Number;
      
      public var §4p§:Number;
      
      public var §2=§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§5!?§;
         this.§2A§ = 0;
         this.§4p§ = 5;
         this.§2=§ = 0.7;
      }
   }
}
