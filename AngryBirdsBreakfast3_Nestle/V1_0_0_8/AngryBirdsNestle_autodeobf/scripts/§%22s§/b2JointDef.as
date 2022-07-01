package §"s§
{
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var userData;
      
      public var §%!T§:b2Body;
      
      public var §,d§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§0D§;
         this.userData = null;
         this.§%!T§ = null;
         this.§,d§ = null;
         this.collideConnected = false;
      }
   }
}
