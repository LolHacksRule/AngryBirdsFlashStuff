package §,H§
{
   import §'I§.b2internal;
   import §9!Z§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var userData;
      
      public var §'!R§:b2Body;
      
      public var §@V§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§4$§;
         this.userData = null;
         this.§'!R§ = null;
         this.§@V§ = null;
         this.collideConnected = false;
      }
   }
}
