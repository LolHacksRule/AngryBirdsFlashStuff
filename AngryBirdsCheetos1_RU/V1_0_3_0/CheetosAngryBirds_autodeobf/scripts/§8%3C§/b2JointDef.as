package §8<§
{
   import §#,§.b2internal;
   import §4]§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §5!_§;
      
      public var §,w§:b2Body;
      
      public var §2h§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§0!-§;
         this.§5!_§ = null;
         this.§,w§ = null;
         this.§2h§ = null;
         this.collideConnected = false;
      }
   }
}
