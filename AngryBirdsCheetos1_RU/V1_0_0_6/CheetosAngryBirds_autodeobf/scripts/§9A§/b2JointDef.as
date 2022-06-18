package §9A§
{
   import §'!3§.b2internal;
   import §?0§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §1!%§;
      
      public var §#1§:b2Body;
      
      public var §"!<§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§5F§;
         this.§1!%§ = null;
         this.§#1§ = null;
         this.§"!<§ = null;
         this.collideConnected = false;
      }
   }
}
