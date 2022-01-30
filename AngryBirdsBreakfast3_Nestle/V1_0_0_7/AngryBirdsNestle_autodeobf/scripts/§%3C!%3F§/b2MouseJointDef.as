package §<!?§
{
   import §!r§.b2internal;
   import §-!2§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §6p§:Number;
      
      public var §'P§:Number;
      
      public var §#0§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§;!U§;
         this.§6p§ = 0;
         this.§'P§ = 5;
         this.§#0§ = 0.7;
      }
   }
}
