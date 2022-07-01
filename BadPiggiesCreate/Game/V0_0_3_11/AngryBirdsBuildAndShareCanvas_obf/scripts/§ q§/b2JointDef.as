package § q§
{
   import §7z§.b2Body;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §'!3§;
      
      public var §@]§:b2Body;
      
      public var §3@§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§[""§;
         this.§'!3§ = null;
         this.§@]§ = null;
         this.§3@§ = null;
         this.collideConnected = false;
      }
   }
}
