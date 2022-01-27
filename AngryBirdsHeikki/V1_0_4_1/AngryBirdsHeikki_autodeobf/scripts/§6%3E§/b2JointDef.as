package §6>§
{
   import §4x§.b2internal;
   import §8!I§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §3q§;
      
      public var §;0§:b2Body;
      
      public var §+4§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§4!U§;
         this.§3q§ = null;
         this.§;0§ = null;
         this.§+4§ = null;
         this.collideConnected = false;
      }
   }
}
