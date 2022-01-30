package §+!0§
{
   import §9"5§.b2Body;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var userData;
      
      public var §6z§:b2Body;
      
      public var §@! §:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§[w§;
         this.userData = null;
         this.§6z§ = null;
         this.§@! § = null;
         this.collideConnected = false;
      }
   }
}
