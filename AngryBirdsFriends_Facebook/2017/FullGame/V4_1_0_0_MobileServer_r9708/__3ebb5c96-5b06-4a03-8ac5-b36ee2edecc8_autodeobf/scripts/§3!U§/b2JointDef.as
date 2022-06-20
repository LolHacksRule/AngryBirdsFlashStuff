package §3!U§
{
   import §1!+§.b2Body;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §1$%§;
      
      public var §0%§:b2Body;
      
      public var §%"d§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§9"a§;
         this.§1$%§ = null;
         this.§0%§ = null;
         this.§%"d§ = null;
         this.collideConnected = false;
      }
   }
}
