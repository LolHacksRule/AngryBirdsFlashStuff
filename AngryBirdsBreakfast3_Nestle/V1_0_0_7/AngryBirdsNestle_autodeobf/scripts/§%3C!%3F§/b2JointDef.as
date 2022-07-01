package §<!?§
{
   import §!r§.b2internal;
   import §0!j§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var userData;
      
      public var §,!K§:b2Body;
      
      public var §6n§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§@P§;
         this.userData = null;
         this.§,!K§ = null;
         this.§6n§ = null;
         this.collideConnected = false;
      }
   }
}
