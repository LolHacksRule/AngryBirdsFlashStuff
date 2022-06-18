package §!H§
{
   import §;0§.b2internal;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §%!J§:Number;
      
      public var §!;§:Number;
      
      public var §=h§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§#!8§;
         this.§%!J§ = 0;
         this.§!;§ = 5;
         this.§=h§ = 0.7;
      }
   }
}
