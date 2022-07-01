package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var userData;
      
      public var §9!w§:b2Body;
      
      public var §>!W§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§7&§;
         this.userData = null;
         this.§9!w§ = null;
         this.§>!W§ = null;
         this.collideConnected = false;
      }
   }
}
