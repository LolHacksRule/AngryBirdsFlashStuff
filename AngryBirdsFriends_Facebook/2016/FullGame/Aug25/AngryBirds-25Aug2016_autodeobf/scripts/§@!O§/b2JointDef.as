package §@!O§
{
   import §0H§.b2internal;
   import §=#n§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §>"<§;
      
      public var §9"Z§:b2Body;
      
      public var §'!Y§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§##s§;
         this.§>"<§ = null;
         this.§9"Z§ = null;
         this.§'!Y§ = null;
         this.collideConnected = false;
      }
   }
}
