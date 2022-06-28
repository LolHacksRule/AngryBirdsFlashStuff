package §9!"§
{
   import §7!u§.b2internal;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §+!+§;
      
      public var §3x§:b2Body;
      
      public var §8P§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§ `§;
         this.§+!+§ = null;
         this.§3x§ = null;
         this.§8P§ = null;
         this.collideConnected = false;
      }
   }
}
