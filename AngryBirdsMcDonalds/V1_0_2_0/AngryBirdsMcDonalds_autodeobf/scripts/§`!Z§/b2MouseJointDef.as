package §`!Z§
{
   import §"U§.b2Vec2;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §@P§:Number;
      
      public var §2b§:Number;
      
      public var §5N§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§^T§;
         this.§@P§ = 0;
         this.§2b§ = 5;
         this.§5N§ = 0.7;
      }
   }
}
